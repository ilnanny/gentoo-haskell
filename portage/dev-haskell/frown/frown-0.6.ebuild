# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/happy/happy-1.15.ebuild,v 1.7 2005/10/04 15:12:34 dcoutts Exp $

inherit haskell-cabal

DESCRIPTION="A parser generator for Haskell"
HOMEPAGE="http://haskell.org/frown/" # TODO: fix
SRC_URI="http://www.informatik.uni-bonn.de/~ralf/${P}-src.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=">=virtual/ghc-6.2.2"
RDEPEND=""

