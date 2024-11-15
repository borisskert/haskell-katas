module Codewars.G964.HowmanySpec where

import Codewars.G964.Howmany
import Data.Char
import Data.List
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testNb :: Int -> Int -> Int -> Spec
testNb n d s =
  it (printf "should return selNumber for n d result : %d %d --> %d \n" n d s) $
    selNumber n d `shouldBe` s

spec :: Spec
spec = do
  describe "selNumber small values" $ do
    testNb 0 1 0
    testNb 3 1 0
    testNb 13 1 1
    testNb 15 1 1
    testNb 20 2 2
    testNb 30 2 4
    testNb 44 2 6
    testNb 50 3 12
    testNb 100 3 21
