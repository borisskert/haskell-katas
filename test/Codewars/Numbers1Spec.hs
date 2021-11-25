module Codewars.Numbers1Spec where

import Codewars.Numbers1 (abundantNumber)
import Test.Hspec

spec :: Spec
spec = do
  describe "aundantNumber" $ do
    it "works for some examples" $ do
      abundantNumber 12 `shouldBe` True
      abundantNumber 18 `shouldBe` True
      abundantNumber 37 `shouldBe` False
      abundantNumber 120 `shouldBe` True
      abundantNumber 77 `shouldBe` False
      abundantNumber 118 `shouldBe` False
      abundantNumber 5830 `shouldBe` True
      abundantNumber 11410 `shouldBe` True
      abundantNumber 14771 `shouldBe` False
      abundantNumber 11690 `shouldBe` True
