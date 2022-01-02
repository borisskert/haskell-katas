module MaxProduct1Spec where

import Data.List (sortBy)
import MaxProduct1
import Test.Hspec

spec = do
  describe "Arrays of cats and dogs" $ do
    it "Basic tests" $ do
      solve [[1, 2], [3, 4]] `shouldBe` 8
      solve [[10, -15], [-1, -3]] `shouldBe` 45
      solve [[-1, 2, -3, 4], [1, -2, 3, -4]] `shouldBe` 12
      solve [[-11, -6], [-20, -20], [18, -4], [-20, 1]] `shouldBe` 17600
      solve [[14, 2], [0, -16], [-12, -16]] `shouldBe` 3584
      solve [[-3, -4], [1, 2, -3]] `shouldBe` 12
      solve [[8, -9, 16, 4], [-16, -10, 20], [-8, -12, 2, -13]] `shouldBe` 3328
      solve [[14, -11, 9, -20], [7, 1, -18, 19], [6, -15, -1]] `shouldBe` 5700
      solve [[5, 4, 15, -15, -18], [-11, -20, -3, -2, -1], [19, 18, -11, 0, -4]] `shouldBe` 6840
      solve [[-2, -15, -12, -8, -16], [-4, -15, -7], [-10, -5]] `shouldBe` -40
      solve [[-20, -12, 0, -11, -11]] `shouldBe` 0
      solve [[14, 18, 9], [9, 9], [-19]] `shouldBe` -1539
      solve [] `shouldBe` 1
      solve [[-13,-18],[0]] `shouldBe` 0
    it "mult" $ do
      mult [1] [2] `shouldBe` [2]
      mult [2, 3] [4] `shouldBe` [8, 12]
      mult [2, 3] [4, 5] `shouldBe` [8, 10, 12, 15]
    it "products" $ do
      products [[1], [2]] `shouldBe` [2]
      products [[2, 3], [4]] `shouldBe` [8, 12]
      products [[2, 3], [4, 5], [6]] `shouldBe` [48, 60, 72, 90]
