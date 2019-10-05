# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Combinator-based type-safe formatting (like printf() or FORMAT)"
HOMEPAGE="http://hackage.haskell.org/package/formatting"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/clock-0.4:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/scientific-0.3.0.0:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/text-0.11.0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec )
"