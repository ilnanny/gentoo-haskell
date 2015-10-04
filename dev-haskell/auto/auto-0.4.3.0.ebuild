# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Denotative, locally stateful programming DSL & platform"
HOMEPAGE="https://github.com/mstksg/auto"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-orphans-0.3.1:=[profile?]
	>=dev-haskell/cereal-0.4.1.1:=[profile?]
	>=dev-haskell/monadrandom-0.3.0.1:=[profile?]
	>=dev-haskell/profunctors-4.3:=[profile?]
	>=dev-haskell/random-1.1:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?]
	>=dev-haskell/transformers-0.4.2.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
