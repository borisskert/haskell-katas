module DoubleIntegerSpec where
import DoubleInteger
import Test.Hspec

spec :: Spec
spec = do
  describe "Testing solution:" $ do
    it "Should double a positive integer:" $ do
      doubleInteger 2 `shouldBe` 4
      doubleInteger 4 `shouldBe` 8
      doubleInteger 100 `shouldBe` 200
    it "Should double negatives, and zero:" $ do
      doubleInteger (-10) `shouldBe` (-20)
      doubleInteger 0 `shouldBe` 0