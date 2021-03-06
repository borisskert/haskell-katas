module SumRecursivelySpec where
import SumRecursively
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "The sumR function" $ do
    it "should work for some examples" $ do
      sumR [] `shouldBe` 0
      sumR [1] `shouldBe` 1
      sumR [1,1,1] `shouldBe` 3
