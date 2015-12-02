# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Various plugins for dlaunch"
HOMEPAGE="https://github.com/AlxHnr/dlaunch-plugins"
SRC_URI="https://github.com/AlxHnr/dlaunch-plugins/archive/v${PVR}.tar.gz -> ${P}.tar.gz"

LICENSE="Unlicense"
KEYWORDS="~amd64"
SLOT="0"

RDEPEND=">=x11-misc/dlaunch-0.2.0"
DEPEND="dev-scheme/chicken ${RDEPEND}"

IUSE="+command-history +exec-path
	+open-home-files +user-cmd"

src_configure() {
	# csc doesn't like multiple library paths, so this workaround copies
	# them into the current directory.
	cp -r "${EROOT}/usr/lib/dlaunch/plugin-api/"* .
}

src_compile() {
	for plugin in $IUSE; do
		use "${plugin#+}" && \
			echo "Compiling ${plugin#+} ..."
			csc -O3 -dynamic -unit "${plugin#+}" "${plugin#+}.scm"
	done
}

src_install() {
	mkdir -p "${D}/usr/lib/dlaunch/plugins/"
	for plugin in $IUSE; do
		use "${plugin#+}" && \
			cp "${plugin#+}.so" "${D}/usr/lib/dlaunch/plugins/"
	done
}
