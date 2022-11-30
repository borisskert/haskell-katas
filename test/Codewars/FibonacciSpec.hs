module Codewars.FibonacciSpec where

import Codewars.Fibonacci (sumFibs)
import Test.Hspec

spec :: Spec
spec = do
  describe "sumFibs" $ do
    it "works for some examples" $ do
      sumFibs  5 `shouldBe` 2
      sumFibs  9 `shouldBe` 44
      sumFibs 10 `shouldBe` 44
      sumFibs 11 `shouldBe` 44
      sumFibs 12 `shouldBe` 188
      sumFibs  0 `shouldBe` 0
      sumFibs  1 `shouldBe` 0
      sumFibs  2 `shouldBe` 0
