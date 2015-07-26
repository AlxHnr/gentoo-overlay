# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="A collection of various scripts and hacks."
HOMEPAGE="https://github.com/AlxHnr/alx-tools"
SRC_URI="https://github.com/AlxHnr/alx-tools/archive/v${PVR}.tar.gz -> ${P}.tar.gz"

LICENSE="Unlicense"
KEYWORDS="~amd64"
SLOT="0"

RDEPEND="sys-apps/coreutils"

src_install() {
	exeinto /usr/bin
	find . -maxdepth 1 -executable -type f -exec doexe {} ';'
}
