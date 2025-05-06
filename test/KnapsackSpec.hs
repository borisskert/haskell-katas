module KnapsackSpec where

import Knapsack (knapsackLight)
import Test.HUnit
import Test.Hspec
import Text.Printf

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Basic Cases" $ do
      fixedTest (10, 5, 6, 4, 8) 10
      fixedTest (10, 5, 6, 4, 9) 16
      fixedTest (10, 10, 6, 10, 9) 0
      fixedTest (10, 2, 11, 3, 1) 0
      fixedTest (15, 2, 20, 3, 2) 15
      fixedTest (2, 5, 3, 4, 5) 3
      fixedTest (4, 3, 3, 4, 4) 4
      fixedTest (3, 5, 3, 8, 10) 3
  where
    fixedTest inp@(v1, w1, v2, w2, mw) exp =
      assertEqual (showInput inp) exp $
        knapsackLight v1 w1 v2 w2 mw

showInput :: (Int, Int, Int, Int, Int) -> String
showInput (a, b, c, d, e) = printf "knapsackLight %d %d %d %d %d" a b c d e
