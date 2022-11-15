module PointsInCircle.TestsSpec (spec) where

import PointsInCircle.Kata (points)
import Test.Hspec

spec :: Spec
spec = do
  describe "Points in circle" $ do
    it "Example tests" $ do
      points 1 `shouldBe` 5
      points 2 `shouldBe` 13
      points 3 `shouldBe` 29
      points 5 `shouldBe` 81
      points 1000 `shouldBe` 3141549
