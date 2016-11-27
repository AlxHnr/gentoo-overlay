# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A collection of various scripts and hacks."
HOMEPAGE="https://github.com/AlxHnr/alx-tools"
SRC_URI="https://github.com/AlxHnr/alx-tools/archive/${PVR}.tar.gz -> ${P}.tar.gz"

LICENSE="Unlicense"
KEYWORDS="~amd64"
SLOT="0"

RDEPEND="sys-apps/portage app-portage/gentoolkit"

src_install() {
	exeinto /usr/bin
	for file in *; do
		test "$file" = "LICENSE"   && continue
		test "$file" = "README.md" && continue
		doexe "$file"
	done
}
