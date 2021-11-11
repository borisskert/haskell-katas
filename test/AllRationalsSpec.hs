module AllRationalsSpec (spec) where

import AllRationals
import Test.Hspec

spec :: Spec
spec = do
  describe "testing ratAt" $ do
    it "ratAt 0" $ do
      ratAt 0 `shouldBe` (1, 1)
    it "ratAt 1" $ do
      ratAt 1 `shouldBe` (1, 2)
    it "ratAt 2" $ do
      ratAt 2 `shouldBe` (2, 1)
    it "ratAt 3" $ do
      ratAt 3 `shouldBe` (1, 3)
    it "ratAt 4" $ do
      ratAt 4 `shouldBe` (3, 2)
    it "ratAt 5" $ do
      ratAt 5 `shouldBe` (2, 3)
    it "ratAt 10" $ do
      ratAt 10 `shouldBe` (5, 2)

  describe "makeKey" $ do
    it "makeKey 8" $ do
      makeKey 8 `shouldBe` [False, False, True]
    it "makeKey 9" $ do
      makeKey 9 `shouldBe` [False, True, False]
    it "makeKey 10" $ do
      makeKey 10 `shouldBe` [False, True, True]
    it "makeKey 11" $ do
      makeKey 11 `shouldBe` [True, False, False]
    it "makeKey 12" $ do
      makeKey 12 `shouldBe` [True, False, True]
    it "makeKey 13" $ do
      makeKey 13 `shouldBe` [True, True, False]
    it "makeKey 14" $ do
      makeKey 14 `shouldBe` [True, True, True]

  describe "parseKey" $ do
    it "parseKey for 8" $ do
      parseKey [False, False, True] `shouldBe` 8
    it "parseKey for 9" $ do
      parseKey [False, True, False] `shouldBe` 9

  describe "testing indexOf" $ do
    it "indexOf (1, 1)" $ do
      indexOf (1, 1) `shouldBe` 0
    it "indexOf (1, 2)" $ do
      indexOf (1, 2) `shouldBe` 1
    it "indexOf (2, 1)" $ do
      indexOf (2, 1) `shouldBe` 2
    it "indexOf (1, 3)" $ do
      indexOf (1, 3) `shouldBe` 3
    it "indexOf (3, 2)" $ do
      indexOf (3, 2) `shouldBe` 4
    it "indexOf (5, 2)" $ do
      indexOf (5, 2) `shouldBe` 10

  describe "larger numbers" $ do
    it "ratAt 1000000000" $ do
      ratAt 1000000000 `shouldBe` (73411,65788)
    it "indexOf (101,103)" $ do
      indexOf (101,103) `shouldBe` 6755399441055741
