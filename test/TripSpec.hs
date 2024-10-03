module TripSpec where

import Test.Hspec
import Test.HUnit (assertBool)
import Trip (zeroFuel)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "zeroFuel 50 25 2" $ do
      assertBool "2 gallons is enough fuel to drive 50 miles at 25 miles per gallon" $ zeroFuel 50 25 2
    it "zeroFuel 60 30 3" $ do
      assertBool "3 gallons is enough fuel to drive 60 miles at 30 miles per gallon" $ zeroFuel 60 30 3
    it "zeroFuel 70 25 1" $ do
      assertBool "1 gallon is not enough fuel to drive 70 miles at 25 miles per gallon" $ not $ zeroFuel 70 25 1
    it "zeroFuel 100 25 3" $ do
      assertBool "3 gallons is not enough fuel to drive 100 miles at 25 miles per gallon" $ not $ zeroFuel 100 25 3
