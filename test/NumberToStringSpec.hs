module NumberToStringSpec where
import NumberToString
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "Tests:" $ do
    it "Should be the correct String" $ do
      a `shouldBe` "123"
