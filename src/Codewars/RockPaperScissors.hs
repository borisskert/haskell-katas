module Codewars.RockPaperScissors where

-- https://www.codewars.com/kata/5672a98bdbdd995fad00000f/train/haskell

rps :: String -> String -> String
rps "scissors" "paper" = "Player 1 won!"
rps "paper" "scissors" = "Player 2 won!"

rps "rock" "scissors" = "Player 1 won!"
rps "scissors" "rock" = "Player 2 won!"

rps "paper" "rock" = "Player 1 won!"
rps "rock" "paper" = "Player 2 won!"

rps "scissors" "scissors" = "Draw!"
rps "rock" "rock" = "Draw!"
rps "paper" "paper" = "Draw!"
