# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Virtual for all application packages"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	app-crypt/keybase
	app-editors/gvim[cscope,python,ruby]
	app-emulation/libvirt[lxc,qemu,sasl,virtualbox]
	app-emulation/qemu[spice,ssh]
	app-emulation/vagrant
	app-emulation/virt-manager
	app-emulation/virtualbox-bin
	app-emulation/virt-viewer
	app-office/gnucash
	app-office/libreoffice-bin
	app-text/aspell[l10n_de,l10n_en]
	app-text/texlive[epspdf,extra,graphics,omega,pstricks,publishers,science]
	dev-python/git-review
	dev-ruby/rails
	dev-util/android-studio
	dev-util/osc
	dev-util/shellcheck
	dev-util/systemtap
	dev-util/valgrind
	dev-vcs/git-deps
	dev-vcs/qgit
	gnome-base/gnome
	mail-client/claws-mail[archive]
	mail-client/thunderbird-bin
	media-gfx/gimp
	media-sound/mumble
	net-analyzer/nmap[nping]
	net-analyzer/tcpdump
	net-analyzer/wireshark
	net-dns/dnsmasq[dhcp,tftp]
	net-fs/nfs-utils[nfsv4,nfsv41]
	net-irc/hexchat
	net-irc/weechat
	net-irc/znc
	net-p2p/rtorrent
	>=sci-libs/gdal-2.0.2[python,curl,threads,jpeg2k]
	sys-apps/hdparm
	sys-apps/pkgcore
	sys-devel/gdb[expat,lzma]
	sys-kernel/kernel-configs
	www-client/firefox-bin
	www-client/google-chrome
	x11-misc/dmenu
	x11-misc/i3lock
	x11-misc/i3status
	x11-misc/xautolock
	x11-wm/i3
	"
