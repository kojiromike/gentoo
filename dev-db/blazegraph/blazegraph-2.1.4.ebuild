# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit java-pkg-2 java-pkg-simple 

DESCRIPTION="High performance graph database"
HOMEPAGE="https://www.blazegraph.com/"
LICENSE="GPL-2"
SRC_URI="https://github.com/${PN}/database/archive/${PN^^}_RELEASE_${PV//./_}.tar.gz"
RESTRICT="mirror"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux"
IUSE=""

RDEPEND=">=virtual/jre-1.7"
DEPEND=">=virtual/jdk-1.7"

S=${WORKDIR}

DATA_DIR=/var/lib/blazegraph
LOG_DIR=/var/log/blazegraph

pkg_setup() {
	enewgroup blazegraph
	enewuser blazegraph -1 -1 "${DATA_DIR}" blazegraph
}
