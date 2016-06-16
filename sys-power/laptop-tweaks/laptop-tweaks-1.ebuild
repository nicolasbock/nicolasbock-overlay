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
"
RDEPEND="
	${RDEPEND}
	sys-apps/ethtool
"

pkg_preinst() {
	exeinto /usr/sbin
	doexe "${FILESDIR}/${PN}"
	elog "Run ${PN} to tweak some power settings"
	insinto /etc/modules-load.d
	doins "${FILESDIR}/vbox.conf"
	insinto /var/lib/iptables
	doins "${FILESDIR}/rules-save"
	cat >> /etc/resolvconf.conf <<EOF
# Use Google DNS as a fallback.
name_servers_append="8.8.8.8 8.8.4.4"
EOF
}
