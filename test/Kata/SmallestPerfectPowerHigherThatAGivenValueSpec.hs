module Kata.SmallestPerfectPowerHigherThatAGivenValueSpec where

import Kata.SmallestPerfectPowerHigherThatAGivenValue
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "findNextPower" $ do
    it "should work for some basic tests" $ do
      findNextPower 12385 3 `shouldBe` 13824
      findNextPower 1245678 5 `shouldBe` 1419857
      findNextPower 1245678 6 `shouldBe` 1771561
