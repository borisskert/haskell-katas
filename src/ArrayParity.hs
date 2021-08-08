module ArrayParity where 

--  https://www.codewars.com/kata/5a092d9e46d843b9db000064/train/haskell

import Data.List (nub)


solve :: [Int] -> Int
solve = sum . nub
