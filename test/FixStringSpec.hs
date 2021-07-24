module FixStringSpec where
import FixString
import Test.Hspec

spec = do
  describe "Fix String Case" $ do
    it "Basic tests" $ do
      solve "code" `shouldBe` "code"
      solve "CODe" `shouldBe` "CODE"
      solve "COde" `shouldBe` "code"
      solve "Code" `shouldBe` "code"
