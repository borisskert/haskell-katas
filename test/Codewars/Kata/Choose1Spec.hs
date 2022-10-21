module Codewars.Kata.Choose1Spec where

import Codewars.Kata.Choose1 (diagonal)

import Test.Hspec
import Text.Printf (printf)

testDiagonal :: Integer -> Integer -> Integer -> Spec
testDiagonal n p s =
  it (printf "should return the diagonal for n = %i p = %i " n p) $
    diagonal n p `shouldBe` s

spec :: Spec
spec = do
    describe "diagonal" $ do
        testDiagonal 20 3 5985
        testDiagonal 20 4 20349
        testDiagonal 20 5 54264
        testDiagonal 78 4 22537515
