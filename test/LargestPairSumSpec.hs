module LargestPairSumSpec (spec) where

import LargestPairSum (largestPairSum)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    largestPairSum [10,14,2,23,19] `shouldBe` 42
    largestPairSum [-100,-29,-24,-19,19] `shouldBe` 0
    largestPairSum [1,2,3,4,6,-1,2] `shouldBe` 10
    largestPairSum [-10,-8,-16,-18,-19] `shouldBe` -18
    largestPairSum [0, -1] `shouldBe` -1
    largestPairSum [-1, 0] `shouldBe` -1
    largestPairSum [1, 1] `shouldBe` 2
    largestPairSum [1, 0, 1] `shouldBe` 2
