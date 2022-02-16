module InfinitelyNestedRadicalExpressions.TestsSpec (spec) where

import Test.Hspec
import InfinitelyNestedRadicalExpressions.Kata (fn)

spec :: Spec
spec = do
  describe "Infinitely Nested Radical Expressions" $ do
    it "Example Tests" $ do
      fn  2 ?~ 2
      fn  6 ?~ 3
      fn 12 ?~ 4

epsilon :: Double
epsilon = 1e-9

approx :: Double -> Double -> Bool
approx 0 value = abs value < epsilon
approx expected value = abs (value-expected) < epsilon * expected

(?~) :: Double -> Double -> Expectation
value ?~ expected = value `shouldSatisfy` approx expected
