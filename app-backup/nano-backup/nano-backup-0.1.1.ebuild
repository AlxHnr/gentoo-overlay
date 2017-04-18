# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A minimal backup tool for POSIX systems"
HOMEPAGE="https://github.com/AlxHnr/nano-backup"
SRC_URI="https://github.com/AlxHnr/nano-backup/archive/v${PVR}.tar.gz -> ${P}.tar.gz"

KEYWORDS="~amd64"
LICENSE="ZLIB"
SLOT="0"

IUSE="doc static test"
RDEPEND="dev-libs/openssl:0"
DEPEND="${RDEPEND} virtual/pkgconfig
	static? ( dev-libs/openssl[static-libs] )
	doc? ( app-doc/doxygen )"

src_compile() {
	use static && LDFLAGS+=" -static"
	emake
	use doc && doxygen
}

src_install() {
	exeinto /usr/bin
	doexe build/nb
	use doc && dohtml -r doc/html/
}
