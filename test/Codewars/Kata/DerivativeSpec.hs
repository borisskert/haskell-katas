module Codewars.Kata.DerivativeSpec where

import Codewars.Kata.Derivative (derive)

import Test.Hspec

main = hspec spec

spec :: Spec
spec = do
  describe "derive" $ do
    it "should work basic tests" $ do
      (derive 7 8) `shouldBe` "56x^7"
      (derive 5 9) `shouldBe` "45x^8"
