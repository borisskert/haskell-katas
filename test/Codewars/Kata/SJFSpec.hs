module Codewars.Kata.SJFSpec where

import Codewars.Kata.SJF (sjf)
import Test.Hspec

spec :: Spec
spec = do
  describe "sjf" $ do
    it "should work for some examples" $ do
      sjf [100] 0 `shouldBe` 100
      sjf [3, 10, 20, 1, 2] 0 `shouldBe` 6
      sjf [3, 10, 20, 1, 2] 1 `shouldBe` 16
      sjf [8, 2, 1, 11, 7, 6, 3, 2, 10] 1 `shouldBe` 3
      sjf [4, 5, 5] 2 `shouldBe` 14
