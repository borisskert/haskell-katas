module IsItDigitSpec where
import IsItDigit
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The isItDigit function" $ do
    it "should work for some examples" $ do
      isItDigit 'a' `shouldBe` False
      isItDigit '1' `shouldBe` True
