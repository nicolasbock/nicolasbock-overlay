# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils

DESCRIPTION="The basic matrix library"
HOMEPAGE="http://qmmd.github.io/bml/"
SRC_URI="https://github.com/qmmd/bml/archive/v${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	virtual/blas
	virtual/lapack
"
RDEPEND="${DEPEND}"

src_configure() {
	local my_cflags="-std=c99"
	CFLAGS="${CFLAGS} ${my_cflags}" \
		CXXFLAGS="${CXXFLAGS} ${my_cflags}" \
		cmake-utils_src_configure
}
