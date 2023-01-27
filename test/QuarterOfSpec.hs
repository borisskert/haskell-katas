module QuarterOfSpec (spec) where

import Test.Hspec
import Test.QuickCheck
import QuarterOf (quarterOf)

spec :: Spec
spec = do
  it "Basic tests" $ do
    quarterOf 1  `shouldBe` 1
    quarterOf 3  `shouldBe` 1
    quarterOf 4  `shouldBe` 2
    quarterOf 8  `shouldBe` 3
    quarterOf 11 `shouldBe` 4
