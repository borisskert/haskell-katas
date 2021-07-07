module NumberfySpec where
import Numberfy (stringToNumber)
import Test.Hspec

spec :: Spec
spec = do
  describe "stringToNumber" $ do
    it "should work for the examples" $ do
      stringToNumber "1234" `shouldBe` 1234
      stringToNumber "605"  `shouldBe` 605
      stringToNumber "1405" `shouldBe` 1405
      stringToNumber "-7"   `shouldBe` -7
