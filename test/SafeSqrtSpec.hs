module SafeSqrtSpec where
import SafeSqrt
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "The safeSqrt function" $ do
    it "should work for some examples" $ do
      safeSqrt 4 `shouldBe` "2.0"
      safeSqrt 16 `shouldBe` "4.0"
      safeSqrt 64 `shouldBe` "8.0"
