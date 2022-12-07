module Codewars.Kata.PentabonacciSpec where

import Codewars.Kata.Pentabonacci (countOddPentaFib)
import Test.Hspec

spec :: Spec
spec = do
  describe "countOddPentaFib" $ do
    it "should return  0 on 0" $ countOddPentaFib 0 `shouldBe` 0
    it "should return  1 on 1" $ countOddPentaFib 1 `shouldBe` 1
    it "should return  1 on 2" $ countOddPentaFib 2 `shouldBe` 1
    it "should return  1 on 3" $ countOddPentaFib 3 `shouldBe` 1
    it "should return  1 on 4" $ countOddPentaFib 4 `shouldBe` 1
    it "should return  1 on 5" $ countOddPentaFib 5 `shouldBe` 1
    it "should return  1 on 6" $ countOddPentaFib 6 `shouldBe` 1
    it "should return  2 on 7" $ countOddPentaFib 7 `shouldBe` 2
    it "should return  3 on 8" $ countOddPentaFib 8 `shouldBe` 3
    it "should return  3 on 9" $ countOddPentaFib 9 `shouldBe` 3
    it "should return  3 on 10" $ countOddPentaFib 10 `shouldBe` 3
    it "should return  5 on 15" $ countOddPentaFib 15 `shouldBe` 5
    it "should return 15 on 45" $ countOddPentaFib 45 `shouldBe` 15
    it "should return 22 on 67" $ countOddPentaFib 67 `shouldBe` 22
    it "should return 23 on 68" $ countOddPentaFib 68 `shouldBe` 23
    it "should return 23 on 69" $ countOddPentaFib 69 `shouldBe` 23
    it "should return 23 on 70" $ countOddPentaFib 70 `shouldBe` 23
    it "should return 23 on 71" $ countOddPentaFib 71 `shouldBe` 23
    it "should return 23 on 72" $ countOddPentaFib 72 `shouldBe` 23
    it "should return 24 on 73" $ countOddPentaFib 73 `shouldBe` 24
    it "should return 25 on 74" $ countOddPentaFib 74 `shouldBe` 25
    it "should return 1205 on 3617" $ countOddPentaFib 3617 `shouldBe` 1205
