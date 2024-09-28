{-# LANGUAGE NumericUnderscores #-}

module NumTheNumsSpec (spec) where

import NumTheNums (sumOfSums)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "sumOfSums 3" 55 $ sumOfSums 3
    assertEqual "sumOfSums 5" 630 $ sumOfSums 5
    assertEqual "sumOfSums 100" 14_740_530_850 $ sumOfSums 100
