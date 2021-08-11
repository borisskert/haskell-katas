module EvenNumsSpec where
import EvenNums
import Test.Hspec

spec :: Spec
spec = do
  describe "Even numbers in array" $ do
    it "Basic tests" $ do
      evenNumbers [1, 2, 3, 4, 5, 6, 7, 8, 9]  3 `shouldBe` [4, 6, 8]
      evenNumbers [-22, 5, 3, 11, 26, -6, -7, -8, -9, -8, 26]  2 `shouldBe` [-8, 26]
      evenNumbers [6, -25, 3, 7, 5, 5, 7, -3, 23]  1 `shouldBe` [6]
