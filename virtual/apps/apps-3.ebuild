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
	app-emulation/libvirt[qemu]
	app-emulation/qemu[spice,ssh]
	app-emulation/virt-manager
	app-emulation/virtualbox-bin
	app-emulation/virt-viewer
	app-office/gnucash
	app-office/libreoffice-bin
	app-text/aspell[linguas_en,linguas_de]
	app-text/texlive[epspdf,extra,graphics,omega,pstricks,publishers,science]
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
	net-irc/weechat
	net-p2p/rtorrent
	>=sci-libs/gdal-2.0.2[python,curl,threads,jpeg2k]
	sys-apps/pkgcore
	sys-devel/gdb[expat,lzma]
	www-client/firefox-bin
	www-client/google-chrome
	"
