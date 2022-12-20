module Isomorph.TestSpec where

import Test.Hspec
import Isomorph.Kata (isomorph)

spec :: Spec
spec = do
  describe "Isomorph" $ do
    it "Example tests" $ do
      isomorph "ESTATE" "DUELED" `shouldBe` True
      isomorph "XXX" "YYY" `shouldBe` True
      isomorph "SEE" "SAW" `shouldBe` False
      isomorph "XXY" "XYY" `shouldBe` False
      -- Should handle words with more than 10 characters
      isomorph "abcdefghijk" "abcdefghijba" `shouldBe` False
