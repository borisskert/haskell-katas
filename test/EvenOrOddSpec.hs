module EvenOrOddSpec where
import EvenOrOdd
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "Examples" $ do
    it "Evens:" $ do
      evenOrOdd 2 `shouldBe` "Even"
      evenOrOdd 0 `shouldBe` "Even"
    it "Odds" $ do
      evenOrOdd 7 `shouldBe` "Odd"
      evenOrOdd 1 `shouldBe` "Odd"
