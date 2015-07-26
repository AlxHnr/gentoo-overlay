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

RDEPEND="sys-apps/portage
	app-portage/gentoolkit
	app-shells/bash
	sys-devel/make
	|| ( ( sys-apps/coreutils
			sys-apps/util-linux
			sys-apps/findutils
			sys-apps/diffutils
			sys-apps/grep
			sys-apps/sed
			app-arch/tar )
		sys-apps/busybox[make-symlinks] )"

src_install() {
	exeinto /usr/bin
	find . -maxdepth 1 -executable -type f -exec doexe {} ';'
}
