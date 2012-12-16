# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit base haskell-cabal

DESCRIPTION="An efficient packed Unicode text type."
HOMEPAGE="https://github.com/bos/text"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE="test"

RDEPEND=">=dev-haskell/deepseq-1.1.0.0[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/quickcheck-2.4.0.1[profile?]
			>=dev-haskell/test-framework-0.4[profile?] <dev-haskell/test-framework-0.7[profile?]
			<dev-haskell/test-framework-hunit-0.3[profile?]
			<dev-haskell/test-framework-quickcheck2-0.3[profile?]
		)"

PATCHES=("${FILESDIR}/${PN}-0.11.2.2-ghc-7.5.patch"
	"${FILESDIR}/${PN}-0.11.2.2-quickcheck-2.5.patch")

src_configure() {
	# the tests need a utf-8 locale
	cabal_src_configure $(use test && use_enable test tests) #395351
}
