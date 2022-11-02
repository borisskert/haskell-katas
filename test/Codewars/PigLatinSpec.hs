module Codewars.PigLatinSpec where

import Codewars.PigLatin
import Test.Hspec

spec :: Spec
spec = do
  it "Tests" $ do
    pigLatin "map" `shouldBe` Just "apmay"
    pigLatin "egg" `shouldBe` Just "eggway"
    pigLatin "tes3t5" `shouldBe` Nothing
    pigLatin "Hello" `shouldBe` Just "ellohay"
    pigLatin "ya" `shouldBe` Just "ayay"
    pigLatin "YA" `shouldBe` Just "ayay"
    pigLatin "ppTRSHOcoSCH" `shouldBe` Just "ocoschpptrshay"
