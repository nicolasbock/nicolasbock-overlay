# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Virtual for all application packages"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	app-admin/lnav
	app-crypt/kbfs
	app-crypt/keybase
	app-doc/doxygen
	app-editors/gedit-plugins[git,terminal]
	app-editors/gvim[cscope,python,ruby]
	app-editors/vim[cscope,python,ruby]
	app-emulation/docker[btrfs]
	app-emulation/libvirt[lxc,qemu,sasl,-virtualbox]
	app-emulation/qemu[spice,ssh]
	app-emulation/vagrant[-virtualbox]
	app-emulation/virt-manager
	app-emulation/virtualbox-bin
	app-emulation/virt-viewer
	app-misc/evtest
	app-misc/tmate
	app-misc/tmux
	app-office/gnucash
	app-office/libreoffice-bin
	app-portage/repoman
	app-text/aspell[l10n_de,l10n_en]
	app-text/texlive[epspdf,extra,graphics,omega,pstricks,publishers,science]
	app-text/tree
	>=app-vim/command-t-3.0
	app-vim/extra-syntax
	app-vim/fugitive
	app-vim/gnupg
	app-vim/python-mode
	app-vim/vim-spell-de
	app-vim/vim-spell-en
	app-vim/voom
	dev-db/mariadb
	dev-lang/go
	dev-lang/ruby
	dev-python/git-review
	dev-python/ipdb
	dev-python/ipython[matplotlib,notebook]
	dev-python/pandas
	dev-python/pep8
	dev-python/sphinx
	>=dev-python/tox-2.0
	dev-util/indent
	dev-util/osc
	dev-util/shellcheck
	dev-util/systemtap
	dev-util/valgrind
	dev-vcs/git-deps
	dev-vcs/git-spindle
	dev-vcs/qgit
	gnome-base/gnome
	gnome-extra/gnome-clocks
	mail-client/neomutt[gpg,mbox,notmuch,sasl,smime]
	media-fonts/arphicfonts
	media-fonts/bitstream-cyberbit
	media-fonts/droid
	media-fonts/ipamonafont
	media-fonts/ja-ipafonts
	media-fonts/lohit-fonts
	media-fonts/takao-fonts
	media-fonts/wqy-microhei
	media-fonts/wqy-zenhei
	media-gfx/gimp
	media-plugins/gst-plugins-meta[dv,dvb,libass,opus,theora,taglib,vaapi,vcd,vpx,wavpack]
	media-sound/mumble
	media-sound/pavucontrol
	net-analyzer/nmap[nping]
	net-analyzer/tcpdump
	net-analyzer/wireshark
	net-dns/dnsmasq[dhcp,tftp]
	net-fs/nfs-utils[nfsv4,nfsv41]
	net-ftp/atftp
	net-ftp/lftp
	net-ftp/ncftp
	net-irc/hexchat
	net-irc/weechat
	net-irc/znc
	net-mail/offlineimap
	net-misc/netkit-telnetd
	net-misc/vconfig
	net-p2p/rtorrent
	sci-libs/scipy[sparse]
	sys-apps/hdparm
	sys-apps/pkgcore
	sys-boot/syslinux
	sys-boot/unetbootin
	sys-devel/gdb[lzma]
	sys-kernel/kernel-configs
	sys-power/powertop
	sys-process/htop
	www-client/firefox-bin
	www-client/google-chrome
	www-servers/nginx
	x11-apps/xrandr
	x11-misc/dmenu
	x11-misc/i3lock
	x11-misc/i3status
	x11-misc/xautolock
	x11-wm/i3
	"
