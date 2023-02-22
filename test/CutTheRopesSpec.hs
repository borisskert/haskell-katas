module CutTheRopesSpec where

import CutTheRopes (cutTheRopes)
import Test.Hspec

spec = do
  it "should work correctly" $ do
    cutTheRopes [3, 3, 2, 9, 7]
      `shouldBe` [5, 4, 2, 1]
    cutTheRopes [1, 2, 3, 4, 3, 3, 2, 1]
      `shouldBe` [8, 6, 4, 1]
    cutTheRopes [13035, 6618, 13056, 20912, 1119, 13035, 6618, 6618, 8482, 13056]
      `shouldBe` [10, 9, 6, 5, 3, 1]
