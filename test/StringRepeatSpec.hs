module StringRepeatSpec where
import StringRepeat
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The repeatStr function" $ do
    it "should work for some examples" $ do
      repeatStr 3 "*" `shouldBe` "***"
