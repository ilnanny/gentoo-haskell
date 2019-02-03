# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Simple interface to optparse-applicative"
HOMEPAGE="https://github.com/fpco/optparse-simple#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="build-example"

RDEPEND=">=dev-haskell/githash-0.1.3.0:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	>=dev-lang/ghc-8.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag build-example build-example)
}