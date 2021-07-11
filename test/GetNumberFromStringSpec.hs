module GetNumberFromStringSpec where
import GetNumberFromString
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The getNumberFromString function" $ do
    it "should work for some examples" $ do
      getNumberFromString "1" `shouldBe` 1
      getNumberFromString "123" `shouldBe` 123
      getNumberFromString "this is number: 7" `shouldBe` 7
