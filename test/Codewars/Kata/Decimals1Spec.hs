module Codewars.Kata.Decimals1Spec where

import Codewars.Kata.Decimals1 (twoDecimalPlaces)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "twoDecimalPlaces" $ do
    it "works for some examples" $ do
      twoDecimalPlaces 4.1537212 `shouldBeApproximately` 4.15
      twoDecimalPlaces 173735326.3783732637948948 `shouldBeApproximately` 173735326.38

    it "never differs more than 0.005 from the original number" $
      property $
        forAll (choose (-1e+10, 1e+10)) $ \x ->
          let y = twoDecimalPlaces x
           in abs (y - x) `shouldSatisfy` (<= 0.005)

shouldBeApproximately :: Double -> Double -> Expectation
shouldBeApproximately actual expected =
  actual `shouldSatisfy` (\x -> abs (x - expected) <= 0.005)
