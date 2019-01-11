# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_SINGLE_IMPL=1
PYTHON_COMPAT=( python{3_4,3_5,3_6} )

inherit distutils-r1 git-r3

DESCRIPTION="Initial tagging script for Notmuch"
HOMEPAGE="https://github.com/afewmail/afew"
EGIT_REPO_URI="https://github.com/afewmail/afew.gi"t

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/chardet[${PYTHON_USEDEP}]
	dev-python/dkimpy[${PYTHON_USEDEP}]
	net-mail/notmuch[python,${PYTHON_USEDEP}]"

DOCS=( "README.rst" )

src_prepare() {
	distutils-r1_src_prepare
}

src_install() {
	distutils-r1_src_install
	dodoc afew/defaults/afew.config
}
