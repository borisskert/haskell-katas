module Triangle1Spec (spec) where

import Test.Hspec
import Triangle1

spec :: Spec
spec = do
  it "basic tests" $ do
    otherAngle 30 60 `shouldBe` 90
    otherAngle 60 60 `shouldBe` 60
    otherAngle 43 78 `shouldBe` 59
    otherAngle 10 20 `shouldBe` 150
