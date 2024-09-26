module Codewars.G964.PureoddprimeSpec where

import Codewars.G964.Pureoddprime (onlyOddDigPrime)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testOPS :: Integer -> [Integer] -> Spec
testOPS n s =
  it (printf "should return onlyOddDigPrime for n result : %d --> %s \n" n (show s)) $
    onlyOddDigPrime n `shouldBe` s

spec :: Spec
spec = do
  describe "Basic tests onlyOddDigPrime" $ do
    testOPS 20 [7, 19, 31]
    testOPS 40 [9, 37, 53]
    testOPS 55 [10, 53, 59]
    testOPS 60 [11, 59, 71]
    testOPS 100 [15, 97, 113]
    testOPS 5333 [120, 5333, 5351]
