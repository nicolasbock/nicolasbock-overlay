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
	app-misc/evtest
	app-misc/tmate
	app-misc/tmux
	app-portage/eix
	app-portage/flaggie
	app-portage/gentoolkit
	>=app-portage/layman-2.3.0[mercurial,subversion]
	app-portage/mirrorselect
	app-portage/repoman
	app-shells/bash-completion
	app-text/tree
	>=app-vim/command-t-3.0
	app-vim/extra-syntax
	app-vim/fugitive
	app-vim/gnupg
	app-vim/python-mode
	app-vim/rails
	app-vim/vim-spell-de
	app-vim/vim-spell-en
	app-vim/voom
	dev-lang/go
	dev-lang/ruby
	dev-lang/rust
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
	net-analyzer/iftop
	net-firewall/ebtables
	net-misc/iputils[arping,clockdiff,idn,rdisc,tftpd,tracepath,traceroute]
	net-misc/networkmanager-openconnect
	net-misc/networkmanager-openvpn
	net-misc/networkmanager[resolvconf]
	net-wireless/rfkill
	sci-libs/scipy[sparse]
	sys-apps/microcode-ctl
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
