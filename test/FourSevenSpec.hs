module FourSevenSpec (spec) where

import FourSeven (fourSeven)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    fourSeven 4 `shouldBe` Just 7
    fourSeven 7 `shouldBe` Just 4
    fourSeven 5 `shouldBe` Nothing
