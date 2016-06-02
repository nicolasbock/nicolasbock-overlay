# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Virtual for all base packages"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	app-admin/sudo
	app-editors/vim[cscope,python,ruby]
	app-emulation/docker[btrfs]
	app-emulation/virt-manager
	app-misc/evtest
	app-misc/tmate
	app-misc/tmux
	app-portage/cpuinfo2cpuflags
	app-portage/eix
	app-portage/flaggie
	app-portage/gentoolkit
	>=app-portage/layman-2.3.0
	app-portage/mirrorselect
	app-shells/bash-completion
	>=app-vim/command-t-3.0
	app-vim/eruby-syntax
	app-vim/fugitive
	app-vim/gnupg
	app-vim/rails
	app-vim/vim-spell-en
	dev-lang/go
	dev-lang/ruby
	dev-python/ipython[matplotlib,notebook]
	dev-python/pandas
	dev-python/pep8
	dev-util/indent
	media-fonts/arphicfonts
	media-fonts/bitstream-cyberbit
	media-fonts/droid
	media-fonts/ipamonafont
	media-fonts/ja-ipafonts
	media-fonts/lohit-fonts
	media-fonts/takao-fonts
	media-fonts/wqy-microhei
	media-fonts/wqy-zenhei
	media-sound/pavucontrol
	net-firewall/ebtables
	net-misc/networkmanager-openconnect
	net-misc/networkmanager-openvpn
	net-misc/networkmanager[resolvconf]
	net-wireless/rfkill
	sci-libs/scipy[sparse]
	sys-apps/pciutils
	sys-apps/usbutils
	sys-boot/grub[device-mapper]
	sys-boot/syslinux
	sys-boot/unetbootin
	sys-firmware/iwl7260-ucode
	sys-fs/dosfstools
	sys-kernel/genkernel-next[cryptsetup]
	sys-kernel/vanilla-sources
	sys-power/frequency-scaling
	sys-power/laptop-tweaks
	sys-power/powertop
	sys-process/htop
	sys-process/lsof
	sys-process/systemd-cron[python_single_target_python3_4]
	"
