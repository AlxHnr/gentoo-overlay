# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit git-r3

DESCRIPTION="A minimal backup tool for POSIX systems"
HOMEPAGE="https://github.com/AlxHnr/nano-backup"
EGIT_REPO_URI="https://github.com/AlxHnr/nano-backup"

LICENSE="ZLIB"
SLOT="0"

IUSE="doc test"
RDEPEND="dev-libs/openssl:0"
DEPEND="${RDEPEND} virtual/pkgconfig
	doc? ( app-doc/doxygen )"

src_compile() {
	emake
	use doc && doxygen
}

src_install() {
	exeinto /usr/bin
	doexe build/nb
	use doc && dohtml -r doc/html/
}
