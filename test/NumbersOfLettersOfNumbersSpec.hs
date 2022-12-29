module NumbersOfLettersOfNumbersSpec where

import NumbersOfLettersOfNumbers.Kata (numbersOfLetters)
import Test.Hspec

spec :: Spec
spec = do
  describe "Numbers of Letters of Numbers" $ do
    it "Example Tests" $ do
      numbersOfLetters 1 `shouldBe` ["one", "three", "five", "four"]
      numbersOfLetters 12 `shouldBe` ["onetwo", "six", "three", "five", "four"]
      numbersOfLetters 37 `shouldBe` ["threeseven", "onezero", "seven", "five", "four"]
      numbersOfLetters 311 `shouldBe` ["threeoneone", "oneone", "six", "three", "five", "four"]
      numbersOfLetters 4 `shouldBe` ["four"]
