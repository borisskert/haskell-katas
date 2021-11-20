module Kata (seaSick) where

-- https://www.codewars.com/kata/57e90bcc97a0592126000064/train/haskell

import Data.List (group)

seaSick :: String -> String
seaSick sea
  | changes < 1 = "No Problem"
  | changes > threshold = "Throw Up"
  | otherwise = "No Problem"
  where
    changes = (+ (-1)) . length . group $ sea
    threshold = (`div` 5) . length $ sea
