module Codewars.Kata.Cuboids.TestSpec (spec) where

import Test.Hspec
import Codewars.Kata.Cuboids

spec :: Spec
spec = do
  describe "findDifference" $ do
    it "should work for some examples" $ do
      findDifference (3, 2, 5) (1, 4, 4) `shouldBe` 14
      findDifference (9, 7, 2) (5, 2, 2) `shouldBe` 106
      findDifference (11, 2, 5) (1, 10, 8) `shouldBe` 30
      findDifference (4, 4, 7) (3, 9, 3) `shouldBe` 31
      findDifference (15, 20, 25) (10, 30, 25) `shouldBe` 0
