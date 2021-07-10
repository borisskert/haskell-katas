module CheckFactorSpec (spec) where

import Test.Hspec
import CheckFactor

spec :: Spec
spec = do
  it "should return True" $ do
    checkForFactor 10 2 `shouldBe` True
    checkForFactor 63 7 `shouldBe` True
    checkForFactor 2450 5 `shouldBe` True
    checkForFactor 24612 3 `shouldBe` True
  it "should return False" $ do
    checkForFactor 9 2 `shouldBe` False
    checkForFactor 653 7 `shouldBe` False
    checkForFactor 2453 5 `shouldBe` False
    checkForFactor 24617 3 `shouldBe` False
