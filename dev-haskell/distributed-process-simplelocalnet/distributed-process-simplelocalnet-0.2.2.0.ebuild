# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Simple zero-configuration backend for Cloud Haskell"
HOMEPAGE="http://haskell-distributed.github.com"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="build-example"

RDEPEND=">=dev-haskell/binary-0.6.3:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/data-accessor-0.2:=[profile?] <dev-haskell/data-accessor-0.3:=[profile?]
	>=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/network-multicast-0.0:=[profile?] <dev-haskell/network-multicast-0.1:=[profile?]
	>=dev-haskell/network-transport-0.4.1.0:=[profile?] <dev-haskell/network-transport-0.5:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	build-example? ( >=dev-haskell/distributed-process-0.5.0:=[profile?] <dev-haskell/distributed-process-0.5:=[profile?]
				>=dev-haskell/network-transport-tcp-0.4:=[profile?] <dev-haskell/network-transport-tcp-0.4:=[profile?] )
	!build-example? ( >=dev-haskell/distributed-process-0.5.0:=[profile?] <dev-haskell/distributed-process-0.6:=[profile?]
				>=dev-haskell/network-transport-tcp-0.4:=[profile?] <dev-haskell/network-transport-tcp-0.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag build-example build-example)
}
