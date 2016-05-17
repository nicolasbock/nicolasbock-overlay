# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Kernel configs"
HOMEPAGE="https://github.com/nicolasbock/nicolasbock-overlay"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	sys-kernel/genkernel-next
	sys-kernel/vanilla-sources:*
	"
RDEPEND="${DEPEND}"

pkg_preinst() {
	insinto /etc/kernel-configs
	doins "${FILESDIR}"/kernel-config-x86_64-*
}
