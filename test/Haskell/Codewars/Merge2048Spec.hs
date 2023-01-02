module Haskell.Codewars.Merge2048Spec where

import Test.Hspec
import Haskell.Codewars.Merge2048

spec = do
  describe "Testing Merge" $
    it "should merge basic examples" $ do
      merge [2,2,0,0] `shouldBe` [4,0,0,0]
      merge [0,0,2,2] `shouldBe` [4,0,0,0]
      merge [2,0,2,2] `shouldBe` [4,2,0,0]
      merge [2,2,2,2,2] `shouldBe` [4,4,2,0,0]
