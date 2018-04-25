# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Model-view-controller"
HOMEPAGE="http://hackage.haskell.org/package/mvc"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.0.0:=[profile?] <dev-haskell/async-2.3:=[profile?]
	<dev-haskell/contravariant-1.5:=[profile?]
	>=dev-haskell/foldl-1.1:=[profile?] <dev-haskell/foldl-1.4:=[profile?]
	<dev-haskell/managed-1.1:=[profile?]
	>=dev-haskell/mmorph-1.0.2:=[profile?] <dev-haskell/mmorph-1.2:=[profile?]
	>=dev-haskell/pipes-4.1.7:=[profile?] <dev-haskell/pipes-4.4:=[profile?]
	>=dev-haskell/pipes-concurrency-2.0.3:=[profile?] <dev-haskell/pipes-concurrency-2.1:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

PATCHES=("${FILESDIR}"/${P}-loosen-deps.patch
		 "${FILESDIR}"/${P}-ghc-8.4.patch)

src_prepare() {
	default

	cabal_chdeps \
		'semigroups == 0.18.*' 'semigroups >= 0.18'
}
