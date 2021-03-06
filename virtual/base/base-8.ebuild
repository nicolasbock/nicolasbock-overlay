# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Virtual for all base packages"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	app-admin/sudo
	app-portage/eix
	app-portage/flaggie
	app-portage/gentoolkit
	>=app-portage/layman-2.3.0[mercurial,subversion]
	app-portage/mirrorselect
	app-shells/bash-completion
	net-analyzer/iftop
	net-firewall/ebtables
	net-misc/iputils[arping,clockdiff,idn,rdisc,tftpd,tracepath,traceroute]
	net-misc/networkmanager-openconnect
	net-misc/networkmanager-openvpn
	net-misc/networkmanager[resolvconf]
	net-wireless/rfkill
	sys-apps/microcode-ctl
	sys-apps/pciutils
	sys-apps/usbutils
	sys-boot/grub[device-mapper]
	sys-firmware/iwl7260-ucode
	sys-fs/dosfstools
	sys-kernel/genkernel-next[cryptsetup]
	sys-kernel/vanilla-sources
	sys-process/lsof
	sys-process/systemd-cron[python_single_target_python3_4]
	"
