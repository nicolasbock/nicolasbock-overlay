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

DEPEND=""
RDEPEND="
	sys-apps/ethtool
"

pkg_preinst() {
	exeinto /usr/sbin
	doexe "${FILESDIR}/${PN}"
	elog "Run ${PN} to tweak some power settings"
	insinto /etc/modules-load.d
	doins "${FILESDIR}/vbox.conf"
}
