# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Numbers that are range representations"
HOMEPAGE="https://github.com/tonyday567/numhask-range"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/adjunctions-4.3:=[profile?] <dev-haskell/adjunctions-5:=[profile?]
	>=dev-haskell/distributive-0.5:=[profile?] <dev-haskell/distributive-0.6:=[profile?]
	>=dev-haskell/numhask-0.0.9:=[profile?]
	>=dev-haskell/protolude-0.1.8:=[profile?] <dev-haskell/protolude-0.3:=[profile?]
	>=dev-haskell/quickcheck-2.8:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>=dev-haskell/semigroupoids-5.1:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/doctest
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"