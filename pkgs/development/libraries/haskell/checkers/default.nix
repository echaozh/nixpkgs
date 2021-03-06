{ cabal, QuickCheck, random }:

cabal.mkDerivation (self: {
  pname = "checkers";
  version = "0.3.2";
  sha256 = "0v8i6754syvjh2p5qdqh95j3swkar9077gidsnahwk9h6qfsx6r3";
  buildDepends = [ QuickCheck random ];
  meta = {
    description = "Check properties on standard classes and data structures";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
