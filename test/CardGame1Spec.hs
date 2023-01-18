module CardGame1Spec (spec) where

import CardGame1 (solution)
import Test.Hspec

spec :: Spec
spec = do
  describe "description example tests" $ do
    it "A good day for Frank" $ do
      solution [2, 5, 8, 11] [1, 4, 7, 10] [0, 3, 6, 9] `shouldBe` True
    it "A bad day for Frank" $ do
      solution [1, 2, 3, 4] [5, 6, 7, 8] [0, 9, 10, 11] `shouldBe` False
    it "random deals" $ do
      solution [1, 3, 4, 8] [0, 2, 7, 10] [5, 6, 9, 11] `shouldBe` False
    it "random deals 2" $ do
      solution [6, 7, 8, 10] [3, 4, 5, 9] [0, 1, 2, 11] `shouldBe` True
    it "random deals 3" $ do
      solution [1, 2, 4, 9] [5, 8, 10, 11] [0, 3, 6, 7] `shouldBe` False
    it "random deals 4" $ do
      solution [0, 2, 4, 9] [3, 6, 8, 11] [1, 5, 7, 10] `shouldBe` True
