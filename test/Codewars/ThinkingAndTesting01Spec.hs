module Codewars.ThinkingAndTesting01Spec where

import Codewars.ThinkingAndTesting01
import Test.Hspec

spec :: Spec
spec = do
  describe "testit" $ do
    it "returns 1 for 0 1" $ testit 0 1 `shouldBe` 1
    it "returns 3 for 1 2" $ testit 1 2 `shouldBe` 3
    it "returns 30 for 10 20" $ testit 10 20 `shouldBe` 30

    it "returns 1 for 1 1" $ testit 1 1 `shouldBe` 1
    it "returns 3 for 1 3" $ testit 1 3 `shouldBe` 3

    it "2 2" $ testit 2 2 `shouldBe` 2
    it "11 22" $ testit 11 22 `shouldBe` 31
    it "123 456" $ testit 123 456 `shouldBe` 507
    it "2 1" $ testit 2 1 `shouldBe` 3
    it "2 3" $ testit 2 3 `shouldBe` 3
    it "1 4" $ testit 1 4 `shouldBe` 5
    it "1 5" $ testit 1 5 `shouldBe` 5
    it "1 6" $ testit 1 6 `shouldBe` 7
    it "3 1" $ testit 3 1 `shouldBe` 3
    it "5 1" $ testit 5 1 `shouldBe` 5
    it "3 2" $ testit 3 2 `shouldBe` 3
    it "6 1" $ testit 6 1 `shouldBe` 7
    it "2 5" $ testit 2 5 `shouldBe` 7

  describe "decToBin" $ do
    it "0" $ decToBin 0 `shouldBe` [False]
    it "1" $ decToBin 1 `shouldBe` [True]
    it "2" $ decToBin 2 `shouldBe` [True, False]
    it "3" $ decToBin 3 `shouldBe` [True, True]

  describe "binToDec" $ do
    it "0" $ binToDec [False] `shouldBe` 0
    it "1" $ binToDec [True] `shouldBe` 1
    it "2" $ binToDec [True, False] `shouldBe` 2
    it "3" $ binToDec [True, True] `shouldBe` 3

  describe "or'" $ do
    it "0 0" $ or' [False] [False] `shouldBe` [False]
    it "0 1" $ or' [True] [False] `shouldBe` [True]
    it "1 0" $ or' [False] [True] `shouldBe` [True]
    it "1 1" $ or' [True] [True] `shouldBe` [True]
    it "2 1" $ or' [True, False] [True] `shouldBe` [True, True]
    it "11 22" $ or' [True, False, True, True] [True, False, True, True, False] `shouldBe` [True, True, True, True, True]
    it "2 5" $ or' [True, False] [True, False, True] `shouldBe` [True, True, True]
    it "11 8" $ or' [True, False, True, True] [True, False, False, False] `shouldBe` [True, False, True, True]
    it "123 456" $ or' [True, True, True, True, False, True, True] [True, True, True, False, False, True, False, False, False] `shouldBe` [True, True, True, True, True, True, False, True, True]
