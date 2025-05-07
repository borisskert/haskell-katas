module CircleCipherSpec where

import CircleCipher (decode, encode)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    let tests =
          [ ("codewars", "csordaew"),
            ("white", "wehti"),
            ("Assert", "Atsrse"),
            ("Hello world!", "H!edlllroo w"),
            ("You have chosen to translate this kata.", "Y.oaut ahka vsei hcth oesteanl stnoa rt")
          ]
    it "encodes properly" $ do
      mapM_ (\(s, s') -> encode s `shouldBe` s') tests
    it "decodes properly" $ do
      mapM_ (\(s, s') -> decode s' `shouldBe` s) tests

  describe "Additional Tests" $ do
    it "encodes ints" $ do
      encode [0, 1, 2, 3, 4, 5, 6, 7] `shouldBe` [0, 7, 1, 6, 2, 5, 3, 4]
    it "decodes ints" $ do
      decode [0, 7, 1, 6, 2, 5, 3, 4] `shouldBe` [0, 1, 2, 3, 4, 5, 6, 7]
