module ReverseRecursivelySpec where
import ReverseRecursively
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "The revR function" $ do
    it "should work for some examples" $ do
      revR [] `shouldBe` []
      revR [1] `shouldBe` [1]
      revR [1,2] `shouldBe` [2,1]
