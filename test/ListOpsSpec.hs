module ListOpsSpec where
import qualified ListOps
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
    it "Example tests" $ do
      ListOps.head [1,5] `shouldBe` 1
      ListOps.tail [1] `shouldBe` []
      ListOps.init [1,5,7,9] `shouldBe` [1,5,7]
      ListOps.last [1,5] `shouldBe` 5
