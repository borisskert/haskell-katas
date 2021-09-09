module OddEvenSortSpec where
import OddEvenSort
import Test.Hspec

spec = do
  describe "Odd-Even String Sort" $ do
    it "Basic tests" $ do
      sortMyString "CodeWars" `shouldBe` "CdWr oeas"
      sortMyString "YCOLUE'VREER" `shouldBe` "YOU'RE CLEVER"
