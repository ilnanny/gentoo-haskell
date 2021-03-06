# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Certificates and Key Reader/Writer"
HOMEPAGE="https://github.com/vincenthz/hs-certificate"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable"
RESTRICT="test" # due missing tests

RDEPEND=">=dev-haskell/asn1-data-0.7.1:=[profile?] <dev-haskell/asn1-data-0.8.0:=[profile?]
	>=dev-haskell/crypto-pubkey-types-0.4:=[profile?] <dev-haskell/crypto-pubkey-types-0.5:=[profile?]
	dev-haskell/cryptohash:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/pem-0.1:=[profile?] <dev-haskell/pem-0.3:=[profile?]
	>=dev-lang/ghc-6.12.1:=
	executable? ( dev-haskell/cmdargs:=[profile?]
			dev-haskell/crypto-pubkey:=[profile?]
			>=dev-haskell/text-0.11:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
"

PATCHES=(
	"${FILESDIR}"/${PN}-1.3.9-ghc-7.10.patch
	"${FILESDIR}"/${PN}-1.3.9-ghc84.patch
)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable) \
		--flags=-test
}
