{ cabal, QuickCheck, testFramework, testFrameworkQuickcheck2 }:

cabal.mkDerivation (self: {
  pname = "data-hash";
  version = "0.2.0.0";
  sha256 = "1bfsbc4fkg3jqgbgka1mg6k1fizynvvxbhf2zb0x1apgr579mcrm";
  testDepends = [
    QuickCheck testFramework testFrameworkQuickcheck2
  ];
  meta = {
    description = "Combinators for building fast hashing functions";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
