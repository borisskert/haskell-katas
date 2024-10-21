module DuckDuckGoose (duckDuckGoose, Player (..)) where

import Preloaded (Player (name))

-- https://www.codewars.com/kata/582e0e592029ea10530009ce/train/haskell

duckDuckGoose :: [Player] -> Int -> String
duckDuckGoose players goose = name . (!! index) $ players
  where
    count = length players
    index = (`mod` count) . subtract 1 $ goose
