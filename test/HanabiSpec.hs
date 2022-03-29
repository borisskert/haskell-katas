module HanabiSpec where
import Hanabi
import Preloaded (Suit(..))
import Test.Hspec

spec = do
  describe "Sample Tests" $ do
    it "[ (3, Yellow), (1, Red), (2, Red), (2, Red) ]" $ do
      ways [(3, Yellow), (1, Red), (2, Red), (2, Red)] `shouldBe` 5
    it "[ (4, Blue), (3, White), (5, Blue), (2, White) ]" $ do
      ways [(4, Blue), (3, White), (5, Blue), (2, White)] `shouldBe` 6
    it "[ (1, Green), (2, Blue), (3, Blue), (4, White) ]" $ do
      ways [(1, Green), (2, Blue), (3, Blue), (4, White)] `shouldBe` 7
