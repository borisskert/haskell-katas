module Codewars.Kata.RPG where

--  https://www.codewars.com/kata/55849d76acd73f6cc4000087/train/haskell

playerRankUp :: Integer -> [Char]
playerRankUp points
  | points >= 100 = "Well done! You have advanced to the qualifying stage. Win 2 out of your next 3 games to rank up."
  | otherwise = "False"
