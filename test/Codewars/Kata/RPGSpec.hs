module Codewars.Kata.RPGSpec where
import Codewars.Kata.RPG (playerRankUp)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "RPG Ranker" $ do
    it "should work for any test" $ do
      playerRankUp 34   `shouldBe` "False"
      playerRankUp 100 `shouldBe` "Well done! You have advanced to the qualifying stage. Win 2 out of your next 3 games to rank up."
  