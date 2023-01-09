module MaxAndMinSpec where

import MaxAndMin
import Test.Hspec

spec = do
  describe "Minimum and maximum difference" $ do
    it "Basic tests" $ do
      maxAndmin [3, 10, 5] [20, 7, 15, 8] `shouldBe` [17, 2]
      maxAndmin [3] [20] `shouldBe` [17, 17]
      maxAndmin [3, 10, 5] [3, 10, 5] `shouldBe` [7, 0]
      maxAndmin [1, 2, 3, 4, 5] [6, 7, 8, 9, 10] `shouldBe` [9, 1]
