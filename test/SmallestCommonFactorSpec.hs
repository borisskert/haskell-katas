module SmallestCommonFactorSpec where

import SmallestCommonFactor
import Test.Hspec

spec :: Spec
spec = do
  describe "Smallest Common Factor" $ do
    it "Basic tests" $ do
      scf [200, 30, 18, 8, 64, 34] `shouldBe` 2
      scf [21, 45, 51, 27, 33] `shouldBe` 3
      scf [133, 147, 427, 266] `shouldBe` 7
      scf [3, 5, 7] `shouldBe` 1
      scf [] `shouldBe` 1
      scf [2548] `shouldBe` 2
      scf [485, 677, 29, 297] `shouldBe` 1
