module Codewars.Kata.SumTriSpec where

import Codewars.Kata.SumTri
import Test.Hspec

spec :: Spec
spec = do
  describe "Sum of trangular numbers" $ do
    it "Sample tests" $ do
      sunTriNumbers 0 `shouldBe` 0
      sunTriNumbers 1 `shouldBe` 1
      sunTriNumbers 2 `shouldBe` 4
      sunTriNumbers 3 `shouldBe` 10
      sunTriNumbers 4 `shouldBe` 20
      sunTriNumbers 5 `shouldBe` 35
      sunTriNumbers 48 `shouldBe` 19600
      sunTriNumbers 579 `shouldBe` 32518570
      sunTriNumbers 1771 `shouldBe` 927341646
    --   sunTriNumbers (-19) `shouldBe` 0
