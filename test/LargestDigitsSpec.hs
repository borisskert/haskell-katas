module LargestDigitsSpec where
import LargestDigits (digit5)
import Test.Hspec

spec :: Spec
spec = do
  describe "digit5" $ do
    it "should work for some examples" $ do
      digit5 "7316717"       `shouldBe` 73167
      digit5 "1234567898765" `shouldBe` 98765
