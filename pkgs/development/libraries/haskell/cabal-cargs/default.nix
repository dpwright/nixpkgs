{ cabal, Cabal, cabalLenses, cmdargs, either, filepath, lens
, strict, systemFileio, systemFilepath, tasty, tastyGolden, text
, transformers, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "cabal-cargs";
  version = "0.7";
  sha256 = "1dzmvwmb9sxwdgkzszhk9d5qvq2alnqmprx83dlb17sdi6f9jns1";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    Cabal cabalLenses cmdargs either lens strict systemFileio
    systemFilepath text transformers unorderedContainers
  ];
  testDepends = [ filepath tasty tastyGolden ];
  jailbreak = true;
  meta = {
    description = "A command line program for extracting compiler arguments from a cabal file";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.tomberek ];
  };
})
