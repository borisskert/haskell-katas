module Codewars.Kata.FindOddSpec where

import Codewars.Kata.FindOdd (findOdd)
import Test.Hspec
import Test.Hspec.QuickCheck

spec :: Spec
spec = do
  describe "findUnique" $ do
    prop "works for singleton lists" $ do
      findOdd [0] `shouldBe` 0

    prop "works for lists with three elements" $ do
      findOdd [1, -1, -1] `shouldBe` 1
      findOdd [0, -1, -1] `shouldBe` 0
      findOdd [0, 1, 1] `shouldBe` 0

    prop "works for lists with five elements" $ do
      findOdd [1, 1, 1, -1, -1] `shouldBe` 1
      findOdd [0, 0, 0, -1, -1] `shouldBe` 0
      findOdd [0, 0, 0, 1, 1] `shouldBe` 0
      findOdd [0, 1, 0, 0, 0] `shouldBe` 1
