module ParseFloatSpec where
import ParseFloat
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The parseFloat function" $ do
    it "should work for some examples" $ do
      parseFloat "1" `shouldBe` Just 1.0
