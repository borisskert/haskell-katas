module Codewars.SummingSpec where

import Codewars.Summing (maximumSum, minimumSum)
import Test.Hspec

spec :: Spec
spec = do
  describe "minimumSum" $ do
    it "should work for some examples" $ do
      minimumSum [1 .. 5] 2 `shouldBe` 3
      minimumSum [1 .. 5] 3 `shouldBe` 6
      minimumSum [1, 0] 1 `shouldBe` 0

  describe "maximumSum" $ do
    it "should work for some examples" $ do
      maximumSum [1 .. 5] 2 `shouldBe` 9
      maximumSum [1 .. 5] 3 `shouldBe` 12
      maximumSum [1, 1, -3, -2] 2 `shouldBe` 2
