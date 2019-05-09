# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Virtual for all base packages"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	>=app-portage/layman-2.3.0[mercurial,subversion]
	app-admin/sudo
	app-eselect/eselect-sh
	app-portage/eix
	app-portage/flaggie
	app-portage/gentoolkit
	app-portage/mirrorselect
	app-shells/bash-completion
	app-shells/dash
	net-analyzer/iftop
	net-analyzer/traceroute
	net-misc/iputils[arping,clockdiff,idn,rdisc,tftpd,tracepath]
	net-misc/networkmanager[resolvconf]
	net-vpn/networkmanager-openconnect
	net-vpn/networkmanager-openvpn
	sys-apps/pciutils
	sys-apps/usbutils
	sys-boot/grub[device-mapper]
	sys-firmware/intel-microcode[initramfs]
	sys-fs/dosfstools
	sys-kernel/genkernel-next[cryptsetup]
	sys-kernel/linux-firmware
	sys-kernel/vanilla-sources
	sys-process/lsof
	sys-process/systemd-cron
	"
