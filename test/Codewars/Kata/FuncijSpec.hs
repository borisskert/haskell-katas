module Codewars.Kata.FuncijSpec where

import Codewars.Kata.Funcij
import Test.Hspec
import Text.Printf (printf)

testMinij :: Integer -> Integer -> Spec
testMinij n s =
  it (printf "should return the result of sum of minima for n = %i " n) $
    sumin n `shouldBe` s

testMaxij :: Integer -> Integer -> Spec
testMaxij n s =
  it (printf "should return the result of sum of maxima for n = %i " n) $
    sumax n `shouldBe` s

spec :: Spec
spec = do
  describe "sumin/sumax/sumsum" $ do
    testMaxij 5 95
    testMaxij 6 161
    testMaxij 8 372

    testMinij 5 55
    testMinij 6 91
    testMinij 8 204
    
    it "sumsum" $ do
      sumsum 1 `shouldBe` 2
      sumsum 2 `shouldBe` 12
      sumsum 3 `shouldBe` 36
      sumsum 4 `shouldBe` 80
      sumsum 5 `shouldBe` 150
      sumsum 6 `shouldBe` 252
