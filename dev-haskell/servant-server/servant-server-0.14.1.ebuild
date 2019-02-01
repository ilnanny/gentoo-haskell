# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="A family of combinators for defining webservices APIs and serving them"
HOMEPAGE="http://haskell-servant.readthedocs.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # requires porting to hspec-2.6

RDEPEND=">=dev-haskell/aeson-1.3.1.1:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/base-compat-0.10.1:=[profile?] <dev-haskell/base-compat-0.11:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/exceptions-0.10.0:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/http-api-data-0.3.8.1:=[profile?] <dev-haskell/http-api-data-0.4:=[profile?]
	>=dev-haskell/http-media-0.7.1.2:=[profile?] <dev-haskell/http-media-0.8:=[profile?]
	>=dev-haskell/http-types-0.12.1:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/monad-control-1.0.2.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-2.6.3.5:=[profile?] <dev-haskell/network-2.9:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/resourcet-1.1.11:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-haskell/semigroups-0.18.4:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/servant-0.14.1:=[profile?] <dev-haskell/servant-0.15:=[profile?]
	>=dev-haskell/string-conversions-0.4.0.1:=[profile?] <dev-haskell/string-conversions-0.5:=[profile?]
	>=dev-haskell/tagged-0.8.5:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.6.2:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-haskell/wai-3.2.1.1:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/wai-app-static-3.1.6.1:=[profile?] <dev-haskell/wai-app-static-3.2:=[profile?]
	>=dev-haskell/warp-3.2.13:=[profile?] <dev-haskell/warp-3.3:=[profile?]
	>=dev-haskell/word8-0.1.3:=[profile?] <dev-haskell/word8-0.2:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	>=dev-haskell/cabal-doctest-1.0.6 <dev-haskell/cabal-doctest-1.1"
# 	test? ( >=dev-haskell/doctest-0.15.0 <dev-haskell/doctest-0.17
# 		>=dev-haskell/hspec-2.5.1 <dev-haskell/hspec-2.6
# 		>=dev-haskell/hspec-wai-0.9.0 <dev-haskell/hspec-wai-0.10
# 		>=dev-haskell/quickcheck-2.11.3 <dev-haskell/quickcheck-2.13
# 		dev-haskell/safe
# 		>=dev-haskell/should-not-typecheck-2.1.0 <dev-haskell/should-not-typecheck-2.2
# 		>=dev-haskell/temporary-1.3 <dev-haskell/temporary-1.4
# 		>=dev-haskell/wai-extra-3.0.21.0 <dev-haskell/wai-extra-3.1 )
# "
