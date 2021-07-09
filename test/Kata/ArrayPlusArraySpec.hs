module Kata.ArrayPlusArraySpec (spec, main) where

import Kata.ArrayPlusArray (arrayPlusArray)
import Test.Hspec

main = hspec spec
spec = do
  describe "tests" $ do
    it "Basic tests" $ do
      arrayPlusArray [1, 2, 3] [4, 5, 6]  `shouldBe` 21
      arrayPlusArray [-1, -2, -3] [-4, -5, -6]  `shouldBe` -21
      arrayPlusArray [0, 0, 0] [4, 5, 6]  `shouldBe` 15
      arrayPlusArray [100, 200, 300] [400, 500, 600] `shouldBe` 2100
