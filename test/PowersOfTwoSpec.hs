module PowersOfTwoSpec where
import PowersOfTwo
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The powersOfTwo function" $ do
    it "should work for some examples" $ do
      powersOfTwo 0 `shouldBe` [1]
      powersOfTwo 1 `shouldBe` [1,2]
      powersOfTwo 2 `shouldBe` [1,2,4]
