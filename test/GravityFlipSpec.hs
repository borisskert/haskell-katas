module GravityFlipSpec (spec) where

import GravityFlip (gravityFlip)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    gravityFlip 'R' [3, 2, 1, 2] `shouldBe` [1, 2, 2, 3]
    gravityFlip 'L' [1, 4, 5, 3, 5] `shouldBe` [5, 5, 4, 3, 1]
