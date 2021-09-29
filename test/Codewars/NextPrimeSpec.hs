module Codewars.NextPrimeSpec (spec) where

import Codewars.NextPrime
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Next Prime" $ do
    it "should work for some tests" $ do
      nextPrime 1 `shouldBe` 2
      nextPrime 2 `shouldBe` 3
      nextPrime 3 `shouldBe` 5
      nextPrime 13 `shouldBe` 17
      nextPrime 181 `shouldBe` 191
      nextPrime 911 `shouldBe` 919
  describe "isPrime" $ do
    it "isPrime == True" $ do
      isPrime 1 `shouldBe` True
      isPrime 2 `shouldBe` True
      isPrime 3 `shouldBe` True
      isPrime 5 `shouldBe` True
      isPrime 7 `shouldBe` True
      isPrime 11 `shouldBe` True
      isPrime 13 `shouldBe` True
      isPrime 17 `shouldBe` True
      isPrime 19 `shouldBe` True
    it "isPrime == False" $ do
      isPrime 4 `shouldBe` False
      isPrime 6 `shouldBe` False
      isPrime 8 `shouldBe` False
      isPrime 9 `shouldBe` False
      isPrime 10 `shouldBe` False
      isPrime 12 `shouldBe` False
      isPrime 14 `shouldBe` False
      isPrime 15 `shouldBe` False
      isPrime 16 `shouldBe` False
      isPrime 18 `shouldBe` False
      isPrime 20 `shouldBe` False
