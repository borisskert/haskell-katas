module OddBitSpec (spec) where

import OddBit
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    anyOdd 0 `shouldBe` 0
    anyOdd 1 `shouldBe` 0
    anyOdd 2 `shouldBe` 1
    anyOdd 128 `shouldBe` 1
    anyOdd 131 `shouldBe` 1
    anyOdd 24082 `shouldBe` 1
    anyOdd 85 `shouldBe` 0
    anyOdd 1024 `shouldBe` 0
    anyOdd 1365 `shouldBe` 0
    anyOdd 2863311530 `shouldBe` 1
  describe "decToBin" $ do
    it "0b0" $ do
      decToBin 0 `shouldBe` [False]
    it "0b1" $ do
      decToBin 1 `shouldBe` [True]
    it "0b10" $ do
      decToBin 2 `shouldBe` [True, False]
    it "0b11" $ do
      decToBin 3 `shouldBe` [True, True]
