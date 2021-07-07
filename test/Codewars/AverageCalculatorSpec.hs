module Codewars.AverageCalculatorSpec where

import Codewars.AverageCalculator (getAverage)
import Test.Hspec

spec :: Spec
spec = do
  describe "getAverage" $ do
    it "works for some examples" $ do
      getAverage [2,2,2,2] `shouldBe` 2
      getAverage [1, 5, 87, 45, 8, 8] `shouldBe` 25
      getAverage [2,5,13,20,16,16,10] `shouldBe` 11
      getAverage [1,2,15,15,17,11,12,17,17,14,13,15,6,11,8,7] `shouldBe` 11
