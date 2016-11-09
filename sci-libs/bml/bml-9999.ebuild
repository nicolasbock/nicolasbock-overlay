# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="The basic matrix library"
HOMEPAGE="http://qmmd.github.io/bml/"
EGIT_REPO_URI="https://github.com/qmmd/bml.git"
EGIT_BRANCH="develop"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="test"

DEPEND="
	virtual/blas
	virtual/lapack
"
RDEPEND="${DEPEND}"

src_configure() {
	local my_cflags="-std=c99"
	local mycmakeargs=(
		BUILD_SHARED_LIBS=yes
		BML_TESTING=yes
	)
	CFLAGS="${CFLAGS} ${my_cflags}" \
		CXXFLAGS="${CXXFLAGS} ${my_cflags}" \
		cmake-utils_src_configure
}

src_test() {
	cmake-utils_src_test
}
