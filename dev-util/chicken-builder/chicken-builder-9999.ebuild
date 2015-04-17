# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit git-r3

DESCRIPTION="A makefile generator for CHICKEN projects"
HOMEPAGE="https://github.com/AlxHnr/chicken-builder"
EGIT_REPO_URI="https://github.com/AlxHnr/chicken-builder.git"

LICENSE="ZLIB"
SLOT="0"

DEPEND="dev-scheme/chicken"
RDEPEND="${DEPEND}"

src_compile() {
	emake INSTALL_PREFIX="${EROOT}/usr"
}

src_install() {
	emake INSTALL_PREFIX="${D}/usr" install
}
