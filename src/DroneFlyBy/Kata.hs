module DroneFlyBy.Kata (flyBy) where

-- https://www.codewars.com/kata/58356a94f8358058f30004b5/train/haskell

flyBy :: String -> String -> String
flyBy lamps drone = take (length lamps) $ replicate distance 'o' ++ drop distance lamps
  where
    distance = length drone
