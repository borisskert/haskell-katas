module Codewars.Kata.Sum2TotalSpec where

import Codewars.Kata.Sum2Total (total)
import Test.Hspec

spec :: Spec
spec = do
  describe "total" $ do
    it "should work for the examples" $ do
      total [1, 2, 3] `shouldBe` (8)
      total [1, 2, 3, 4] `shouldBe` (20)
      total [1 .. 5] `shouldBe` (48)
      total [5, 4 .. 1] `shouldBe` (48)
      total [1 .. 6] `shouldBe` (112)
      total [1 .. 7] `shouldBe` (256)
      total [1 .. 8] `shouldBe` (576)
      total [1 .. 9] `shouldBe` (1280)
      total [-1, -1, -1] `shouldBe` (-4)
