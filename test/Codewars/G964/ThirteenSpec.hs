module Codewars.G964.ThirteenSpec (spec, main) where

import Codewars.G964.Thirteen
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testThirt :: Integer -> Integer -> Spec
testThirt n u =
  it (printf "should return thirt for n: %d --> %d " n u) $
    thirt n `shouldBe` u

main = hspec spec

spec = do
  describe "fcn" $ do
--    testThirt 1234567 87
--    testThirt 8529 79
--    testThirt 85299258 31
--    testThirt 5634 57
--    testThirt 1111111111 71
--    testThirt 987654321 30
    testThirt 1077286190 19

  describe "modular power" $ do
    it "3 ^ i mod 5" $ do
      modPow 3 13 5 `shouldBe` 3
      modPow 3 15 5 `shouldBe` 2
      modPow 3 1024 5 `shouldBe` 1
