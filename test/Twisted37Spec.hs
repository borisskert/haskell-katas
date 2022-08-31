module Twisted37Spec where

import Twisted37
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      sortTwisted37 [1, 2, 3, 4, 5, 6, 7, 8, 9] `shouldBe` [1, 2, 7, 4, 5, 6, 3, 8, 9]
      sortTwisted37 [12, 13, 14] `shouldBe` [12, 14, 13]
      sortTwisted37 [9, 2, 4, 7, 3] `shouldBe` [2, 7, 4, 3, 9]
      sortTwisted37 [9, -9, -11, 3, -10] `shouldBe` [-11, -10, -9, 3, 9]
