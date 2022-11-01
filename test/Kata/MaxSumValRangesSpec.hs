module Kata.MaxSumValRangesSpec where

import Kata.MaxSumValRanges (maxSum)
import Test.Hspec

spec :: Spec
spec = do
  describe "The maximum sum value of ranges" $ do
    it "Example test 1" $ maxSum [1, -2, 3, 4, -5, -4, 3, 2, 1] [(1, 3)] `shouldBe` 5
    it "Example test 2" $ maxSum [1, -2, 3, 4, -5, -4, 3, 2, 1] [(1, 3), (0, 4), (6, 8)] `shouldBe` 6
    it "Example test 3" $ maxSum [1, -2, 3, 4, -5, -4, 3, 2, 1] [(1, 4), (2, 5)] `shouldBe` 0
