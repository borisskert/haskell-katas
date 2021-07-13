module MakeLowerSpec where
import MakeLower
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The makeLowerCase function" $ do
    it "should work for some examples" $ do
      makeLowerCase "HELLO" `shouldBe` "hello"
