module Farmer where

import Preloaded (AnimalCount (..))

-- https://www.codewars.com/kata/5a02037ac374cbab41000089/train/haskell

getAnimalsCount :: Int -> Int -> Int -> AnimalCount
getAnimalsCount legs heads horns = AnimalCount rabbits chickens cows
  where
    cows = horns `div` 2
    chickens = 2 * heads - legs `div` 2
    rabbits = heads - cows - chickens
