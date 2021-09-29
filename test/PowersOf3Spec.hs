module PowersOf3Spec (spec) where

import PowersOf3 (largestPower)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    largestPower 3 `shouldBe` 0
    largestPower 5 `shouldBe` 1
    largestPower 7 `shouldBe` 1
    largestPower 81 `shouldBe` 3
    largestPower 82 `shouldBe` 4
    largestPower 79766443076872509863366 `shouldBe` 48
    largestPower 2 `shouldBe` 0
    largestPower 1 `shouldBe` -1
    largestPower 0 `shouldBe` -1
