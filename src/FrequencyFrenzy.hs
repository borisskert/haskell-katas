module FrequencyFrenzy where

-- https://www.codewars.com/kata/544a247518b8e08af2000251/train/haskell

import Data.List (group, sort)

frequency :: Ord a => [a] -> [(a, Int)]
frequency = map (\xs -> (head xs, length xs)) . group . sort
