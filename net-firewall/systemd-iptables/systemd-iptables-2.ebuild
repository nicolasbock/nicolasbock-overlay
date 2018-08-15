# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit systemd

DESCRIPTION="Start and stop iptables with systemd service"
HOMEPAGE="https://github.com/nicolasbock/nicolasbock-overlay.git"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPENDS="
	net-firewall/iptables
	"

pkg_preinst() {
	systemd_dounit "${FILESDIR}/${PN}.service"
	exeinto "/etc/firewall"
	doexe "${FILESDIR}/flush-iptables.sh"
	insinto "/etc/firewall"
	doins "${FILESDIR}/iptables.rules"
	doins "${FILESDIR}/ip6tables.rules"
}
