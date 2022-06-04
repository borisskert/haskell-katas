module JosephusSpec where

import Josephus (josephus)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "josephus" $ do
    it "works with integers" $ do
      josephus [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 1 `shouldBe` [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      josephus [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 2 `shouldBe` [2, 4, 6, 8, 10, 3, 7, 1, 9, 5]
      josephus [1 .. 13] 4 `shouldBe` [4, 8, 12, 3, 9, 1, 7, 2, 11, 10, 13, 6, 5]
      josephus [1 .. 6] 12 `shouldBe` [6, 2, 1, 5, 4, 3]
      josephus [1 .. 3] 3 `shouldBe` [3, 1, 2]
      josephus [1 .. 5] 3 `shouldBe` [3, 1, 5, 2, 4]
      josephus [1 .. 6] 1 `shouldBe` [1, 2, 3, 4, 5, 6]
      josephus [1 .. 4] 2 `shouldBe` [2, 4, 3, 1]
      josephus [1 .. 5] 2 `shouldBe` [2, 4, 1, 5, 3]
      josephus [1 .. 6] 2 `shouldBe` [2, 4, 6, 3, 1, 5]
      josephus [1 .. 7] 2 `shouldBe` [2, 4, 6, 1, 5, 3, 7]
      josephus [1 .. 8] 2 `shouldBe` [2, 4, 6, 8, 3, 7, 5, 1]
      josephus [1 .. 5] 3 `shouldBe` [3, 1, 5, 2, 4]
      josephus [1 .. 6] 3 `shouldBe` [3, 6, 4, 2, 5, 1]
      josephus [1 .. 6] 4 `shouldBe` [4, 2, 1, 3, 6, 5]
      josephus [1 .. 6] 5 `shouldBe` [5, 4, 6, 2, 3, 1]
      josephus [1 .. 6] 6 `shouldBe` [6, 1, 3, 2, 5, 4]
      josephus [1 .. 6] 7 `shouldBe` [1, 3, 6, 2, 4, 5]
      josephus [1 .. 6] 8 `shouldBe` [2, 5, 4, 1, 6, 3]
      josephus [1 .. 6] 9 `shouldBe` [3, 1, 2, 6, 4, 5]
      josephus [1 .. 6] 10 `shouldBe` [4, 3, 6, 1, 5, 2]
      josephus [1 .. 6] 11 `shouldBe` [5, 6, 3, 1, 2, 4]
      josephus [1 .. 6] 12 `shouldBe` [6, 2, 1, 5, 4, 3]
      josephus [1 .. 6] 13 `shouldBe` [1, 4, 5, 6, 2, 3]
      josephus [1 .. 6] 14 `shouldBe` [2, 6, 3, 5, 4, 1]

    it "works with strings" $ do
      josephus "CodeWars" 4 `shouldBe` "esWoCdra"
