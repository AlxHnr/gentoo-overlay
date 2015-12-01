# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A simple, learning dmenu wrapper"
HOMEPAGE="https://github.com/AlxHnr/dlaunch"
SRC_URI="https://github.com/AlxHnr/dlaunch/archive/v${PVR}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/dlaunch-${PVR}"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-scheme/chicken
	dev-util/chicken-builder"

RDEPEND="dev-scheme/chicken
	x11-misc/dmenu"

src_compile() {
	emake INSTALL_PREFIX="${EROOT}/usr"
}

src_install() {
	emake INSTALL_PREFIX="${D}/usr" install
}
