module Need where

-- https://www.codewars.com/kata/57cc975ed542d3148f00015b/train/haskell

check :: Eq a => [a] -> a -> Bool
check [] _ = False
check (first:others) x = do
  if first == x
    then True
    else check others x
