module WelcomeSpec where
import Welcome
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The makeUpperCase function" $ do
    it "should work for some examples" $ do
      sayhello ["John", "Smith"] "Phoenix" "Arizona" `shouldBe` "Hello, John Smith! Welcome to Phoenix, Arizona!"
