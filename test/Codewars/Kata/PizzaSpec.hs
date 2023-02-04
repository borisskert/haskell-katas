module Codewars.Kata.PizzaSpec where

import Codewars.Kata.Pizza (maxPizza)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "maxPizza" $ do
    it "should work for some examples" $ do
      maxPizza 0 `shouldBe` Just 1
      maxPizza 1 `shouldBe` Just 2
      maxPizza 3 `shouldBe` Just 7
      maxPizza (-2) `shouldBe` Nothing

    it "should return a value for any non negative input" $
      property $
        \(NonNegative x) -> maxPizza x `shouldSatisfy` maybe False (const True)

    it "should return Nothing for any negative input" $
      property $
        \(Positive x) -> maxPizza (negate x) `shouldBe` Nothing
