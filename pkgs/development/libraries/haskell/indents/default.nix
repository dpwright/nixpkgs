{ cabal, concatenative, mtl, parsec }:

cabal.mkDerivation (self: {
  pname = "indents";
  version = "0.3.3";
  sha256 = "16lz21bp9j14xilnq8yym22p3saxvc9fsgfcf5awn2a6i6n527xn";
  buildDepends = [ concatenative mtl parsec ];
  meta = {
    homepage = "http://patch-tag.com/r/salazar/indents";
    description = "indentation sensitive parser-combinators for parsec";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
