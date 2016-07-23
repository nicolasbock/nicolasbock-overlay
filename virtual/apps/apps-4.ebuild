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
	app-emulation/libvirt[lxc,qemu,virtualbox]
	app-emulation/qemu[spice,ssh]
	app-emulation/virt-manager
	app-emulation/virtualbox-bin
	app-emulation/virt-viewer
	app-office/gnucash
	app-office/libreoffice-bin
	app-text/aspell[l10n_de,l10n_en]
	app-text/texlive[epspdf,extra,graphics,omega,pstricks,publishers,science]
	dev-python/git-review
	dev-util/android-studio
	dev-util/osc
	dev-util/systemtap
	dev-util/valgrind
	dev-vcs/qgit
	gnome-base/gnome
	mail-client/thunderbird-bin
	media-gfx/gimp
	media-sound/mumble
	net-analyzer/tcpdump
	net-analyzer/wireshark
	net-dns/dnsmasq[dhcp,tftp]
	net-irc/hexchat
	net-irc/weechat
	net-irc/znc
	net-p2p/rtorrent
	>=sci-libs/gdal-2.0.2[python,curl,threads,jpeg2k]
	sys-apps/hdparm
	sys-apps/pkgcore
	sys-devel/gdb[expat,lzma]
	www-client/firefox-bin
	www-client/google-chrome
	"
