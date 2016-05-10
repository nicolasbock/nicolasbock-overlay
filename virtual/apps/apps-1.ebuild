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
	app-office/gnucash
	app-office/libreoffice-bin
	app-text/aspell[linguas_en,linguas_de]
	app-text/texlive[epspdf,extra,graphics,omega,pstricks,publishers,science]
	dev-util/osc
	dev-vcs/qgit
	gnome-base/gnome
	mail-client/thunderbird-bin
	media-gfx/gimp
	media-sound/mumble
	net-irc/weechat
	www-client/google-chrome
	"
