module BinToDecimalSpec (spec, main) where
import BinToDecimal (binToDec)
import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = do
  describe "The binToDec function" $ do
    it "should work for some examples" $ do
      binToDec "0" `shouldBe` 0
      binToDec "1" `shouldBe` 1
      binToDec "10" `shouldBe` 2
      binToDec "11" `shouldBe` 3
      binToDec "110" `shouldBe` 6
