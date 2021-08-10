module NumberToString2Spec where
import NumberToString2
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "Testing:" $ do
    it "Example tests" $ do
      numberToString (67) `shouldBe` "67"
