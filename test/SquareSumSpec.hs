module SquareSumSpec where
import SquareSum
import Test.Hspec

spec :: Spec
spec = do
  describe "squareSum" $ do
    it "should work for some examples" $ do
      squareSum [1,2] `shouldBe` 5
      squareSum [5,3,4] `shouldBe` 50
