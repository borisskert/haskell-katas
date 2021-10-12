module ReplaceAllItemsSpec where
import ReplaceAllItems
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "The replaceAll function" $ do
    it "should work for some examples" $ do
      replaceAll [] 1 2 `shouldBe` []
      replaceAll [1,2,2] 1 2 `shouldBe` [2,2,2]
      replaceAll "Hello World" 'o' '0' `shouldBe` "Hell0 W0rld"
