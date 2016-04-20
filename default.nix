{ mkDerivation, aeson, attoparsec, base, bytestring
, case-insensitive, deepseq, either, exceptions, ghcjs-base
, ghcjs-ffiqq, ghcjs-prim, hspec, http-client, http-media
, http-types, HUnit, network, network-uri, primitive, QuickCheck
, safe, servant, servant-client, servant-server, split, stdenv
, string-conversions, text, transformers, wai, warp
}:
mkDerivation {
  pname = "ghcjs-servant-client";
  version = "1.1.1";
  src = ./.;
  libraryHaskellDepends = [
    aeson attoparsec base bytestring case-insensitive either exceptions
    ghcjs-base ghcjs-ffiqq ghcjs-prim http-media http-types network-uri
    primitive safe servant split string-conversions text transformers
  ];
  testHaskellDepends = [
    aeson base bytestring deepseq either hspec http-client http-media
    http-types HUnit network QuickCheck servant servant-client
    servant-server text wai warp
  ];
  homepage = "http://haskell-servant.github.io/";
  description = "automatical derivation of querying functions for servant webservices";
  license = stdenv.lib.licenses.bsd3;
}
