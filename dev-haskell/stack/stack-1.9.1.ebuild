# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: -disable-git-info,-hide-dependency-versions,-integration-tests,-static,-supported-build

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="The Haskell Tool Stack"
HOMEPAGE="http://haskellstack.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.6
#KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # installs packages from network

RDEPEND=">=dev-haskell/annotated-wl-pprint-0.7.0:=[profile?] <dev-haskell/annotated-wl-pprint-0.8:=[profile?]
	>=dev-haskell/attoparsec-0.13.2.2:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/bindings-uname-0.1:=[profile?] <dev-haskell/bindings-uname-0.2:=[profile?]
	>=dev-haskell/cabal-2.4.0.1:=[profile?] <dev-haskell/cabal-2.5:=[profile?]
	>=dev-haskell/cryptonite-0.25:=[profile?] <dev-haskell/cryptonite-0.26:=[profile?]
	>=dev-haskell/cryptonite-conduit-0.2.2:=[profile?] <dev-haskell/cryptonite-conduit-0.3:=[profile?]
	>=dev-haskell/echo-0.1.3:=[profile?] <dev-haskell/echo-0.2:=[profile?]
	>=dev-haskell/filelock-0.1.1.2:=[profile?] <dev-haskell/filelock-0.2:=[profile?]
	>=dev-haskell/generic-deriving-1.12.2:=[profile?] <dev-haskell/generic-deriving-1.13:=[profile?]
	>=dev-haskell/githash-0.1.1.0:=[profile?] <dev-haskell/githash-0.2:=[profile?]
	>=dev-haskell/hackage-security-0.5.3.0:=[profile?] <dev-haskell/hackage-security-0.6:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/hpack-0.31.0:=[profile?] <dev-haskell/hpack-0.32:=[profile?]
	>=dev-haskell/http-client-0.5.13.1:=[profile?] <dev-haskell/http-client-0.6:=[profile?]
	>=dev-haskell/http-client-tls-0.3.5.3:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-conduit-2.3.2:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?]
	>=dev-haskell/mintty-0.1.2:=[profile?] <dev-haskell/mintty-0.2:=[profile?]
	>=dev-haskell/monad-logger-0.3.29:=[profile?] <dev-haskell/monad-logger-0.4:=[profile?]
	>=dev-haskell/mono-traversable-1.0.9.0:=[profile?] <dev-haskell/mono-traversable-1.1:=[profile?]
	>=dev-haskell/mtl-2.2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/mustache-2.3.0:=[profile?] <dev-haskell/mustache-2.4:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/open-browser-0.2.1.0:=[profile?] <dev-haskell/open-browser-0.3:=[profile?]
	>=dev-haskell/optparse-simple-0.1.0:=[profile?] <dev-haskell/optparse-simple-0.2:=[profile?]
	>=dev-haskell/path-0.6.1:=[profile?] <dev-haskell/path-0.7:=[profile?]
	>=dev-haskell/persistent-template-2.5.4:=[profile?] <dev-haskell/persistent-template-2.6:=[profile?]
	>=dev-haskell/project-template-0.2.0.1:=[profile?] <dev-haskell/project-template-0.3:=[profile?]
	>=dev-haskell/regex-applicative-text-0.1.0.1:=[profile?] <dev-haskell/regex-applicative-text-0.2:=[profile?]
	>=dev-haskell/rio-0.1.5.0:=[profile?] <dev-haskell/rio-0.2:=[profile?]
	>=dev-haskell/semigroups-0.18.5:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/split-0.2.3.3:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/store-core-0.4.4:=[profile?] <dev-haskell/store-core-0.5:=[profile?]
	>=dev-haskell/tar-0.5.1.0:=[profile?] <dev-haskell/tar-0.6:=[profile?]
	>=dev-haskell/text-metrics-0.3.0:=[profile?] <dev-haskell/text-metrics-0.4:=[profile?]
	>=dev-haskell/th-reify-many-0.1.8:=[profile?] <dev-haskell/th-reify-many-0.2:=[profile?]
	>=dev-haskell/tls-1.4.1:=[profile?] <dev-haskell/tls-1.5:=[profile?]
	>=dev-haskell/typed-process-0.2.3.0:=[profile?] <dev-haskell/typed-process-0.3:=[profile?]
	>=dev-haskell/unicode-transforms-0.3.4:=[profile?] <dev-haskell/unicode-transforms-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2.9.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/yaml-0.10.4.0:=[profile?] <dev-haskell/yaml-0.11:=[profile?]
	>=dev-haskell/zip-archive-0.3.3:=[profile?] <dev-haskell/zip-archive-0.4:=[profile?]
	>=dev-haskell/zlib-0.6.2:=[profile?] <dev-haskell/zlib-0.7:=[profile?]
	>=dev-lang/ghc-8.2.1:=
	>=dev-haskell/aeson-1.2.4.0:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/ansi-terminal-0.8.0.4:=[profile?] <dev-haskell/ansi-terminal-0.9:=[profile?]
	>=dev-haskell/async-2.1.1.1:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/conduit-1.2.13.1:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/conduit-extra-1.2.3.2:=[profile?] <dev-haskell/conduit-extra-1.4:=[profile?]
	>=dev-haskell/exceptions-0.8.3:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/extra-1.6.9:=[profile?] <dev-haskell/extra-1.7:=[profile?]
	>=dev-haskell/file-embed-0.0.10.1:=[profile?] <dev-haskell/file-embed-0.1:=[profile?]
	>=dev-haskell/fsnotify-0.2.1.1:=[profile?] <dev-haskell/fsnotify-0.4:=[profile?]
	>=dev-haskell/http-types-0.12.1:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/memory-0.14.16:=[profile?] <dev-haskell/memory-0.15:=[profile?]
	>=dev-haskell/microlens-0.4.8.3:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
	>=dev-haskell/neat-interpolation-0.3.2.1:=[profile?] <dev-haskell/neat-interpolation-0.4:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.2.0:=[profile?] <dev-haskell/optparse-applicative-0.15:=[profile?]
	>=dev-haskell/path-io-1.3.3:=[profile?] <dev-haskell/path-io-1.5:=[profile?]
	>=dev-haskell/persistent-2.7.1:=[profile?] <dev-haskell/persistent-2.10:=[profile?]
	>=dev-haskell/persistent-sqlite-2.6.4:=[profile?] <dev-haskell/persistent-sqlite-2.10:=[profile?]
	>=dev-haskell/primitive-0.6.4.0:=[profile?] <dev-haskell/primitive-0.7:=[profile?]
	>=dev-haskell/resourcet-1.1.11:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-haskell/retry-0.7.6.3:=[profile?] <dev-haskell/retry-0.8:=[profile?]
	>=dev-haskell/stm-2.4.5.0:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/store-0.4.3.2:=[profile?] <dev-haskell/store-0.6:=[profile?]
	>=dev-haskell/streaming-commons-0.1.19:=[profile?] <dev-haskell/streaming-commons-0.3:=[profile?]
	>=dev-haskell/temporary-1.2.1.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unix-compat-0.5.0.1:=[profile?] <dev-haskell/unix-compat-0.6:=[profile?]
	>=dev-haskell/unliftio-0.2.7.0:=[profile?] <dev-haskell/unliftio-0.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2"
	# test? ( >=dev-haskell/smallcheck-1.1.5 <dev-haskell/smallcheck-1.2
	# 	|| ( ( >=dev-haskell/hspec-2.4.8 <dev-haskell/hspec-2.5 )
	# 		( >=dev-haskell/hspec-2.5.5 <dev-haskell/hspec-2.6 ) )
	# 	|| ( ( >=dev-haskell/quickcheck-2.10.1 <dev-haskell/quickcheck-2.11 )
	# 		( >=dev-haskell/quickcheck-2.11.3 <dev-haskell/quickcheck-2.12 ) ) )
#"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-disable-git-info \
		--flag=-hide-dependency-versions \
		--flag=-integration-tests \
		--flag=-static \
		--flag=-supported-build
}
