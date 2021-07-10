module HexToDecimalSpec where
import HexToDecimal
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The hexToDec function" $ do
    it "should work for some examples" $ do
      hexToDec "1" `shouldBe` 1
      hexToDec "c" `shouldBe` 12
      hexToDec "10" `shouldBe` 16
      hexToDec "af" `shouldBe` 175
