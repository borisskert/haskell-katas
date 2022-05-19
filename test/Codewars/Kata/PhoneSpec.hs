module Codewars.Kata.PhoneSpec where
import Codewars.Kata.Phone (validPhoneNumber)
import Test.Hspec

spec :: Spec
spec = do
  describe "validPhoneNumber" $ do
    it "should work for some examples" $ do
      validPhoneNumber "(123) 456-7890"  `shouldBe` True
      validPhoneNumber "(1231) 456-7890" `shouldBe` False
      validPhoneNumber "(098) 456 7890"  `shouldBe` False
