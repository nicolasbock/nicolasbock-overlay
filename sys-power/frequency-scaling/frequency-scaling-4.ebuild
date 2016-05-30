# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit systemd

DESCRIPTION="Adapt frequency scaling driver"
HOMEPAGE="https://github.com/nicolasbock/nicolasbock-overlay"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	sys-power/acpid
	"

pkg_preinst() {
	systemd_dounit "${FILESDIR}/${PN}.timer"
	systemd_dounit "${FILESDIR}/${PN}.service"
	exeinto /usr/bin
	doexe "${FILESDIR}/${PN}"
	insinto /etc
	doins "${FILESDIR}/${PN}.conf"
	insinto /etc/acpi/events
	newins "${FILESDIR}/acpi_ac_event" ac_event
	exeinto /etc/acpi/actions
	newexe "${FILESDIR}/acpi_ac_action.sh" ac_action.sh
	einfo "After first installing, enable with"
	einfo "systemctl enable ${PN}.timer"
	einfo "On updates, run"
	einfo "systemctl daemon-reload"
	einfo "systemctl reenable ${PN}.timer"
}
