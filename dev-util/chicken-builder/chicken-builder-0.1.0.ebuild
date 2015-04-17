# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="A makefile generator for CHICKEN projects"
HOMEPAGE="https://github.com/AlxHnr/chicken-builder"
SRC_URI="https://github.com/AlxHnr/chicken-builder/archive/v${PVR}.tar.gz -> ${P}.tar.gz"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-scheme/chicken"
RDEPEND="${DEPEND}"

src_compile() {
	emake INSTALL_PREFIX="${EROOT}/usr"
}

src_install() {
	emake INSTALL_PREFIX="${D}/usr" install
}
