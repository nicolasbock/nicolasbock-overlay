# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Virtual for all application packages"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	app-crypt/kbfs
	app-crypt/keybase
	app-doc/doxygen
	app-editors/gedit-plugins[git,terminal]
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
	dev-db/mariadb
	dev-python/git-review
	dev-python/sphinx
	>=dev-python/tox-2.0
	dev-ruby/rails
	dev-util/android-studio
	dev-util/osc
	dev-util/shellcheck
	dev-util/systemtap
	dev-util/valgrind
	dev-vcs/git-deps
	dev-vcs/qgit
	gnome-base/gnome
	gnome-extra/gnome-clocks
	mail-client/claws-mail[archive]
	mail-client/mutt
	mail-client/thunderbird-bin
	media-gfx/gimp
	media-sound/mumble
	net-analyzer/nmap[nping]
	net-analyzer/tcpdump
	net-analyzer/wireshark
	net-dns/dnsmasq[dhcp,tftp]
	net-fs/nfs-utils[nfsv4,nfsv41]
	net-ftp/atftp
	net-ftp/ncftp
	net-irc/hexchat
	net-irc/weechat
	net-irc/znc
	net-mail/offlineimap
	net-misc/netkit-telnetd
	net-p2p/rtorrent
	>=sci-libs/gdal-2.0.2[python,curl,threads,jpeg2k]
	sys-apps/hdparm
	sys-apps/pkgcore
	sys-devel/gdb[expat,lzma]
	sys-kernel/kernel-configs
	www-client/firefox-bin
	www-client/google-chrome
	www-servers/nginx
	x11-misc/dmenu
	x11-misc/i3lock
	x11-misc/i3status
	x11-misc/xautolock
	x11-wm/i3
	"
