module RemoveDuplicates  where

--  https://www.codewars.com/kata/57a5b0dfcf1fa526bb000118/train/haskell

import Data.List (nub)
  
distinct :: [Int] -> [Int]
distinct = nub
