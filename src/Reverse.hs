module Reverse where
import Prelude hiding (reverse)

-- https://www.codewars.com/kata/5413759479ba273f8100003d/train/haskell

reverse :: [a] -> [a]
reverse [] = []
reverse (x:others) = reverse others ++ [x]
