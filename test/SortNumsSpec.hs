module SortNumsSpec where
import SortNums
import Test.Hspec

spec :: Spec
spec = do
  describe "Sort Numbers" $ do
    it "Basic tests" $ do
      sortNumbers [1, 2, 3, 10, 5] `shouldBe` Just [1, 2, 3, 5, 10]
      sortNumbers [] `shouldBe` Nothing
      sortNumbers [20, 2, 10] `shouldBe` Just [2, 10, 20]
