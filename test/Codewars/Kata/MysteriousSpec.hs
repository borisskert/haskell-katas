module Codewars.Kata.MysteriousSpec where

import Codewars.Kata.Mysterious (getNum)
import Test.Hspec

spec :: Spec
spec = do
  describe "getNum" $ do
    it "should work for some examples" $ do
      getNum 0 `shouldBe` 1
      getNum 1 `shouldBe` 0
      getNum 2 `shouldBe` 0
      getNum 3 `shouldBe` 0
      getNum 4 `shouldBe` 0
      getNum 5 `shouldBe` 0
      getNum 6 `shouldBe` 1
      getNum 7 `shouldBe` 0
      getNum 8 `shouldBe` 2
      getNum 9 `shouldBe` 1
      getNum 10 `shouldBe` 1
      getNum 11 `shouldBe` 0
      getNum 12 `shouldBe` 0
      getNum 13 `shouldBe` 0
      getNum 14 `shouldBe` 0
      getNum 15 `shouldBe` 0
      getNum 16 `shouldBe` 1
      getNum 18 `shouldBe` 2
      getNum 19 `shouldBe` 1
      getNum 20 `shouldBe` 1
      getNum 25 `shouldBe` 0
      getNum 26 `shouldBe` 1
      getNum 27 `shouldBe` 0
      getNum 28 `shouldBe` 2
      getNum 29 `shouldBe` 1
      getNum 30 `shouldBe` 1
      getNum 36 `shouldBe` 1
      getNum 38 `shouldBe` 2
      getNum 39 `shouldBe` 1
      getNum 40 `shouldBe` 1
      getNum 46 `shouldBe` 1
      getNum 48 `shouldBe` 2
      getNum 49 `shouldBe` 1
      getNum 50 `shouldBe` 1
      getNum 58 `shouldBe` 2
      getNum 59 `shouldBe` 1
      getNum 62 `shouldBe` 1
      getNum 300 `shouldBe` 2
      getNum 90783 `shouldBe` 4
      getNum 123321 `shouldBe` 0
      getNum 89282350306 `shouldBe` 8
      getNum 3479283469 `shouldBe` 5
