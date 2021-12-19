module FuelSpec where

import Test.Hspec
import Fuel

spec :: Spec
spec = do
  it "fixed cases (mpg_lp100km)" $ do
    mpg_lp100km 42 `shouldBe` 5.6
  it "fixed cases (lp100km_mpg)" $ do
    lp100km_mpg 9 `shouldBe` 26.13

-- the following line is optional for 8.2
main = hspec spec
