module AreaLargestSquareSpec where
import Test.Hspec
import AreaLargestSquare (areaLargestSquare)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      areaLargestSquare 0 `shouldBe` 0
      areaLargestSquare 5 `shouldBe` 50
      areaLargestSquare 7 `shouldBe` 98
      areaLargestSquare 50 `shouldBe` 5000
