module RemoveDuplicatesSpec where
import RemoveDuplicates
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The distinct function" $ do
    it "should work for some examples" $ do
      distinct [1] `shouldBe` [1]
      distinct [1,2] `shouldBe` [1,2]
      distinct [1,1,2] `shouldBe` [1,2]
