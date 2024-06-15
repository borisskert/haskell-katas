module Codewars.G964.SumdivsqSpec where

import Codewars.G964.Sumdivsq
import Data.List
import Test.Hspec
import Text.Printf (printf)

testSquared :: Int -> Int -> [(Int, Int)] -> Spec
testSquared m n s =
  it (printf "should return listSquared") $
    listSquared m n `shouldBe` s

spec :: Spec
spec = do
  describe "listSquared" $ do
    testSquared 1 250 [(1, 1), (42, 2500), (246, 84100)]
    testSquared 42 250 [(42, 2500), (246, 84100)]
    testSquared 250 500 [(287, 84100)]

  describe "divisors" $ do
    it "should work for some examples" $ do
      divisors 1 `shouldBe` [1]
      divisors 4 `shouldBe` [1, 2, 4]
      divisors 42 `shouldBe` [1, 2, 3, 6, 7, 14, 21, 42]
      divisors 246 `shouldBe` [1, 2, 3, 6, 41, 82, 123, 246]
