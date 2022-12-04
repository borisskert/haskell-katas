module RankVectorSpec where
import RankVector (ranks)
import Test.Hspec

spec :: Spec
spec = do
  it "ranks integers" $ do
    ranks [9,3,6,10] `shouldBe` [2,4,3,1]
    ranks [3,3,3,3,3,5,1] `shouldBe` [2,2,2,2,2,1,7]
    ranks ([] :: [Int]) `shouldBe` []
    ranks [2] `shouldBe` [1]
    ranks [2,2] `shouldBe` [1,1]
    ranks [5, 2, 3, 5, 5, 4, 9, 8, 0] `shouldBe` [3, 8, 7, 3, 3, 6, 1, 2, 9]