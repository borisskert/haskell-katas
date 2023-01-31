module HammingDistanceSpec (spec) where

import HammingDistance (hammingDistance)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    hammingDistance 25 87 `shouldBe` 4
    hammingDistance 256 302 `shouldBe` 4
    hammingDistance 543 634 `shouldBe` 4
    hammingDistance 34013 702 `shouldBe` 7
