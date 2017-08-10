# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools eutils flag-o-matic

if [[ ${PV} == 99999999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/neomutt/neomutt.git"
	EGIT_CHECKOUT_DIR="${WORKDIR}/neomutt-${P}"
	KEYWORDS=""
else
	SRC_URI="https://github.com/${PN}/${PN}/archive/${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

DESCRIPTION="Teaching an Old Dog New Tricks"
HOMEPAGE="https://www.neomutt.org/"

LICENSE="GPL-2"
SLOT="0"
IUSE="berkdb crypt debug doc gdbm gnutls gpg idn kerberos kyotocabinet
	libressl lmdb mbox nls notmuch qdbm sasl selinux slang smime ssl symlink
	tokyocabinet"

CDEPEND="
	app-misc/mime-types
	nls? ( virtual/libintl )
	tokyocabinet?  ( dev-db/tokyocabinet )
	qdbm?  ( dev-db/qdbm )
	gdbm?  ( sys-libs/gdbm )
	berkdb? ( >=sys-libs/db-4:= )
	kyotocabinet? ( dev-db/kyotocabinet )
	lmdb? ( dev-db/lmdb )
	gnutls?  ( >=net-libs/gnutls-1.0.17 )
	!gnutls? (
		ssl? (
			!libressl? ( >=dev-libs/openssl-0.9.6:0 )
			libressl? ( dev-libs/libressl )
		)
	)
	sasl?    ( >=dev-libs/cyrus-sasl-2 )
	kerberos? ( virtual/krb5 )
	idn?     ( net-dns/libidn )
	gpg?     ( >=app-crypt/gpgme-0.9.0 )
	smime?   (
		!libressl? ( >=dev-libs/openssl-0.9.6:0 )
		libressl? ( dev-libs/libressl )
	)
	notmuch? ( net-mail/notmuch )
	slang? ( sys-libs/slang )
	!slang? ( >=sys-libs/ncurses-5.2:0 )
"
DEPEND="${CDEPEND}
	net-mail/mailbase
	doc? (
		dev-libs/libxml2
		dev-libs/libxslt
		app-text/docbook-xsl-stylesheets
		|| ( www-client/lynx www-client/w3m www-client/elinks )
	)"
RDEPEND="${CDEPEND}
	selinux? ( sec-policy/selinux-mutt )
"

S="${WORKDIR}/${PN}-${P}"

src_prepare() {
	eapply "${FILESDIR}/0001-Rename-mutt-to-neomutt.patch"
	eapply_user
	AT_M4DIR="m4" eautoreconf
}

src_configure() {
	local myconf=(
		"$(use_enable crypt pgp)"
		"$(use_enable debug)"
		"$(use_enable doc)"
		"$(use_enable gpg gpgme)"
		"$(use_enable nls)"
		"$(use_enable smime)"
		"$(use_enable notmuch)"
		"$(use_with idn)"
		"$(use_with kerberos gss)"
		"$(use_with sasl)"
		"$(use_with tokyocabinet)"
		"$(use_with kyotocabinet)"
		"$(use_with qdbm)"
		"$(use_with gdbm)"
		"$(use_with berkdb bdb)"
		"$(use_with lmdb)"
		"--with-$(use slang && echo slang || echo curses)=${EPREFIX}/usr"
		"--sysconfdir=${EPREFIX}/etc/${PN}"
		"--with-docdir=${EPREFIX}/usr/share/doc/${PN}-${PVR}"
	)

	if [[ ${CHOST} == *-solaris* ]] ; then
		# arrows in index view do not show when using wchar_t
		myconf+=( "--without-wc-funcs" )
	fi

	if use gnutls; then
		myconf+=( "--with-gnutls" )
	elif use ssl; then
		myconf+=( "--with-ssl" )
	fi

	if use mbox; then
		myconf+=( "--with-mailpath=${EPREFIX}/var/spool/mail" )
	else
		myconf+=( "--with-homespool=Maildir" )
	fi

	econf "${myconf[@]}"
}

src_install() {
	emake DESTDIR="${D}" install
	[[ $(use symlink) ]] && dosym neomutt mutt
	if use mbox; then
		insinto /etc/${PN}
		newins "${FILESDIR}"/Muttrc.mbox Muttrc
	else
		insinto /etc/${PN}
		doins "${FILESDIR}"/Muttrc
	fi

	# A newer file is provided by app-misc/mime-types. So we link it.
	rm "${ED}"/etc/${PN}/mime.types || die
	dosym /etc/mime.types /etc/${PN}/mime.types

	# A man-page is always handy, so fake one
	if use !doc; then
		emake -C doc DESTDIR="${D}" muttrc.man
		# make the fake slightly better, bug #413405
		sed -e 's#@docdir@/manual.txt#http://www.mutt.org/doc/manual/#' \
			-e 's#in @docdir@,#at http://www.mutt.org/,#' \
			-e "s#@sysconfdir@#${EPREFIX}/etc/${PN}#" \
			-e "s#@bindir@#${EPREFIX}/usr/bin#" \
			doc/mutt.man > neomutt.1 || die
		cp doc/muttrc.man neomuttrc.5 || die
		doman neomutt.1 neomuttrc.5
	else
		# nuke manpages that should be provided by an MTA, bug #177605
		rm "${ED}"/usr/share/man/man5/{mbox,mmdf}.5 \
			|| ewarn "failed to remove files, please file a bug"
	fi

	dodoc COPYRIGHT ChangeLog* OPS* README*
}
