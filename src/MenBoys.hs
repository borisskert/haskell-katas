module MenBoys where

-- https://www.codewars.com/kata/5af15a37de4c7f223e00012d/train/haskell

import Data.List (nub,sort, partition)


menFromBoys :: [Int] -> [Int]
menFromBoys ns = men ++ boys
  where
    unique = nub ns
    partitioned = partition isBoy unique :: ([Int], [Int])
    boys = toBoys partitioned
    men = toMen partitioned


isBoy :: Int -> Bool
isBoy = odd


toBoys :: ([Int], [Int]) -> [Int]
toBoys (boys, _) = reverse $ sort boys


toMen :: ([Int], [Int]) -> [Int]
toMen (_, men) = sort men
