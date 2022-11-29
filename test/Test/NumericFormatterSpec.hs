module Test.NumericFormatterSpec where

import Kata.NumericFormatter (numericFormatter)
import Test.Hspec

spec :: Spec
spec = do
  describe "Generic numeric template formatter" $ do
    it "Example tests" $ do
      numericFormatter "xxx xxxxx xx" "5465253289" `shouldBe` "546 52532 89"
      numericFormatter "xxx xxxxx xx" "" `shouldBe` "123 45678 90"
      numericFormatter "+555 aaaa bbbb" "18031978" `shouldBe` "+555 1803 1978"
      numericFormatter "+555 aaaa bbbb" "" `shouldBe` "+555 1234 5678"
      numericFormatter "xxxx yyyy zzzz" "" `shouldBe` "1234 5678 9012"
      numericFormatter "37Vh1" "7" `shouldBe` "37771"
