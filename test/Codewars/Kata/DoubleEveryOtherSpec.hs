module Codewars.Kata.DoubleEveryOtherSpec where

import Codewars.Kata.DoubleEveryOther
import Test.Hspec

spec :: Spec
spec = do
  describe "doubleEveryOther" $ do
    it "should work for some examples" $ do
      doubleEveryOther [1,2,3,4,5] `shouldBe` [1,4,3,8,5]
      doubleEveryOther [1,19,6,2,12,-3] `shouldBe` [1,38,6,4,12,-6]
