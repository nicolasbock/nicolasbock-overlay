# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit systemd

DESCRIPTION="Some laptop tweaks (for power)"
HOMEPAGE="https://github.com/nicolasbock/nicolasbock-overlay"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	net-dns/openresolv
	net-firewall/iptables
	>=net-misc/networkmanager-1.2.0
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
	insinto /etc/tmpfiles.d
	doins "${FILESDIR}/tmp-part.conf"
	doenvd "${FILESDIR}/99${PN}"
	systemd_dounit "${FILESDIR}/${PN}.service"
	insinto /etc/systemd/network
	doins "${FILESDIR}"/wired.network
	insinto /etc/NetworkManager
	doins "${FILESDIR}"/NetworkManager.conf
	insinto /etc/NetworkManager/dnsmasq.d
	doins "${FILESDIR}"/static-dns
}

pkg_postinst() {
	elog "Run ${PN} to tweak some power settings"
	elog "Run resolvconf -u to update /etc/resolv.conf"
}
