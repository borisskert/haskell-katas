module GrowSpec (spec) where

import Grow (grow)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    grow [1, 2, 3] `shouldBe` 6
    grow [4, 1, 1, 1, 4] `shouldBe`  16
    grow [2, 2, 2, 2, 2, 2] `shouldBe` 64
    grow [1, 0] `shouldBe` 0
