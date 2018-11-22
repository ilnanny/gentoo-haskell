# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Euterpea"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Library for computer music research and education"
HOMEPAGE="http://www.euterpea.com"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/arrows-0.4:=[profile?] <dev-haskell/arrows-0.5:=[profile?]
	>=dev-haskell/hcodecs-0.5.1:=[profile?]
	>=dev-haskell/heap-1.0:=[profile?] <dev-haskell/heap-2.0:=[profile?]
	~dev-haskell/portmidi-0.1.6.1:=[profile?]
	>=dev-haskell/random-1.0.1.1:=[profile?] <=dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
  dev-haskell/hcodecs
"

S="${WORKDIR}/${MY_P}"