module SortNums where 

-- https://www.codewars.com/kata/5174a4c0f2769dd8b1000003/train/haskell

import Data.List (sort)


sortNumbers :: [Int] -> Maybe [Int]
sortNumbers [] = Nothing
sortNumbers xs = Just $ sort xs
