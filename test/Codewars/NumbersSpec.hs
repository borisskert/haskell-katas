module Codewars.NumbersSpec where

import Codewars.Numbers (getLastDigit)
import Test.Hspec

spec :: Spec
spec = do
  describe "getLastDigit" $ do
    it "works for some examples" $ do
      getLastDigit 0 `shouldBe` 0
      getLastDigit 1 `shouldBe` 1
      getLastDigit 2 `shouldBe` 1
      getLastDigit 3 `shouldBe` 2
      getLastDigit 4 `shouldBe` 3
      getLastDigit 5 `shouldBe` 5
      getLastDigit 6 `shouldBe` 8
      getLastDigit 7 `shouldBe` 3 -- 13
      getLastDigit 8 `shouldBe` 1 -- 21
      getLastDigit 9 `shouldBe` 4 -- 34
      getLastDigit 10 `shouldBe` 5
      getLastDigit 193150 `shouldBe` 5
      getLastDigit 300 `shouldBe` 0
      getLastDigit 20001 `shouldBe` 6
      getLastDigit 800 `shouldBe` 5
      getLastDigit 1001 `shouldBe` 1
      getLastDigit 100 `shouldBe` 5
      getLastDigit 260 `shouldBe` 5
      getLastDigit 1111 `shouldBe` 9
      getLastDigit 1234 `shouldBe` 7
      getLastDigit 99999 `shouldBe` 6
      getLastDigit 234 `shouldBe` 2
      getLastDigit 193241 `shouldBe` 1
      getLastDigit 79 `shouldBe` 1
      getLastDigit 270 `shouldBe` 0
