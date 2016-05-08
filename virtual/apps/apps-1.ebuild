# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Virtual for all application packages"
HOMEPAGE="https://github.com/nicolasbock/nicolasbock-overlay"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	app-crypt/keybase
	app-editors/gvim
	app-office/gnucash
	app-office/libreoffice-bin
	app-text/texlive
	dev-util/osc
	dev-vcs/qgit
	gnome-base/gnome
	mail-client/thunderbird-bin
	media-gfx/gimp
	media-sound/mumble
	net-irc/weechat
	www-client/google-chrome
	"
