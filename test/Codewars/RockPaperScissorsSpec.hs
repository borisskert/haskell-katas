module Codewars.RockPaperScissorsSpec where
import Test.Hspec
import Codewars.RockPaperScissors (rps)

spec :: Spec
spec = do
  describe "rock paper scissors" $ do
    it "player 1 win" $ do
      rps "rock" "scissors" `shouldBe` "Player 1 won!"
      rps "scissors" "paper" `shouldBe` "Player 1 won!"
      rps "paper" "rock" `shouldBe` "Player 1 won!"
    it "player 2 win" $ do
      rps "scissors" "rock" `shouldBe` "Player 2 won!"
      rps "paper" "scissors" `shouldBe` "Player 2 won!"
      rps "rock" "paper" `shouldBe` "Player 2 won!"
    it "draw" $ do
      rps "rock" "rock" `shouldBe` "Draw!"
      rps "scissors" "scissors" `shouldBe` "Draw!"
      rps "paper" "paper" `shouldBe` "Draw!"
