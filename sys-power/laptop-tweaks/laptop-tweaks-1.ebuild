# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Some laptop tweaks (for power)"
HOMEPAGE="https://github.com/nicolasbock/nicolasbock-overlay"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	net-dns/openresolv
	net-firewall/iptables
"
RDEPEND="
	${RDEPEND}
	sys-apps/ethtool
"

#S="${WORKDIR}"

src_unpack() {
	mkdir -v -p "${S}" || die
}

src_install() {
	exeinto /usr/sbin
	doexe "${FILESDIR}/${PN}"
	insinto /etc/modules-load.d
	doins "${FILESDIR}/vbox.conf"
	insinto /var/lib/iptables
	doins "${FILESDIR}/rules-save"
	insinto /etc
	newins "${FILESDIR}/resolvconf.conf-google-dns" resolvconf.conf
	doenvd "${FILESDIR}/99${PN}"
}

pkg_postinst() {
	elog "Run ${PN} to tweak some power settings"
	elog "Run resolvconf -u to update /etc/resolv.conf"
}
