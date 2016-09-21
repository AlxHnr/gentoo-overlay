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

IUSE="+update-system +build-kernel
	+remove-kernel-residue +ppack
	+sync-overlay-with-projects
	+nb-sync +print-gentoo-splash"

src_prepare() {
	use "build-kernel" ||
		sed -i '/^build-kernel/d' update-system

	use "remove-kernel-residue" ||
		sed -i '/^remove-kernel-residue$/d' update-system
}

src_install() {
	exeinto /usr/bin
	for program in $IUSE; do
		use "${program#+}" && doexe "${program#+}"
	done
}
