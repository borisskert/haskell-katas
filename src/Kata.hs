module Kata where

-- https://www.codewars.com/kata/5863f97fb3a675d9a700003f/train/haskell

data Player = Player { team :: String, ppg :: Double } deriving (Show)

sumPpg :: Player -> Player -> Double
sumPpg player1 player2 = ppg player1 + ppg player2
