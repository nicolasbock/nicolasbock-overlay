# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit systemd

DESCRIPTION="Start and stop iptables with systemd service"
HOMEPAGE="https://github.com/nicolasbock/nicolasbock-overlay.git"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

pkg_preinst() {
	systemd_dounit "${FILESDIR}/${PN}.service"
	insinto "/etc/firewall"
	doexe "${FILESDIR}/flush-iptables.sh"
	doins "${FILESDIR}/iptables.rules"
}
