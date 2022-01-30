module ConstructABitVectorSetSpec (spec) where

import ConstructABitVectorSet (sortByBit)
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    sortByBit [0,1] `shouldBe` 3
    sortByBit [1,2,0,4] `shouldBe` 23
  it "more example tests" $ do
    sortByBit [] `shouldBe` 0
    sortByBit [0] `shouldBe` 1
    sortByBit [1,0] `shouldBe` 3
    sortByBit [30,0] `shouldBe` 1073741825
