module SimpleFibStringsSpec where

import SimpleFibStrings
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple fibonacci strings" $ do
    it "Basic tests" $ do
      solve 0 `shouldBe` "0" -- 0
      solve 1 `shouldBe` "01" -- 1
      solve 2 `shouldBe` "010" -- 2
      solve 3 `shouldBe` "01001" -- 9₁₀
      solve 4 `shouldBe` "01001010" -- 74₁₀
      solve 5 `shouldBe` "0100101001001" -- 2377₁₀
      solve 6 `shouldBe` "010010100100101001010" -- 608586₁₀
      solve 7 `shouldBe` "0100101001001010010100100101001001" -- 4985538889₁₀
      solve 8 `shouldBe` "0100101001001010010100100101001001010010100100101001010" -- 10455432852752714₁₀

    it "binLength" $ do
      integerBitSize 0 `shouldBe` 1
      integerBitSize 1 `shouldBe` 1
      integerBitSize 2 `shouldBe` 2
      integerBitSize 3 `shouldBe` 2
      integerBitSize 4 `shouldBe` 3
      integerBitSize 5 `shouldBe` 3
      integerBitSize 6 `shouldBe` 3
      integerBitSize 7 `shouldBe` 3
      integerBitSize 8 `shouldBe` 4
      integerBitSize 18 `shouldBe` 5
      integerBitSize 2147483647 `shouldBe` 31
      integerBitSize 2147483648 `shouldBe` 32
      integerBitSize 4294967295 `shouldBe` 32
      integerBitSize 4294967296 `shouldBe` 33
      integerBitSize 18446744073709551615 `shouldBe` 64
      integerBitSize 18446744073709551616 `shouldBe` 65

    it "f" $ do
      f 0 `shouldBe` 0
      f 1 `shouldBe` 1
      f 2 `shouldBe` 2
      f 3 `shouldBe` 9
      f 4 `shouldBe` 74
      f 5 `shouldBe` 2377
      f 6 `shouldBe` 608586
      f 7 `shouldBe` 4985538889
      f 8 `shouldBe` 10455432852752714
