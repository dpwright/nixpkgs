{ cabal, async, conduit, doctest, filepath, free, hspec
, hspecExpectationsLens, httpClient, httpConduit, httpTypes, lens
, monadControl, network, resourcet, text, transformers, xmlConduit
}:

cabal.mkDerivation (self: {
  pname = "libjenkins";
  version = "0.4.3.0";
  sha256 = "18z1yaf1a1ncvflxzv96b35d44933yrmsmxv5dr87iyfry28qbnv";
  buildDepends = [
    async conduit free httpClient httpConduit httpTypes lens
    monadControl network resourcet text transformers xmlConduit
  ];
  testDepends = [
    async conduit doctest filepath free hspec hspecExpectationsLens
    httpClient httpConduit httpTypes lens monadControl network
    resourcet text transformers xmlConduit
  ];
  jailbreak = true;
  doCheck = false;
  meta = {
    description = "Jenkins API interface";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
