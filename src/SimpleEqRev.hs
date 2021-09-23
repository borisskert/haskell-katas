module SimpleEqRev where 

-- https://www.codewars.com/kata/5aa3af22ba1bb5209f000037/train/haskell

import Data.List (groupBy)


solve :: String -> String
solve = concat . reverse . groupBy (\x y -> isOperator x == isOperator y)
  where
    isOperator = (`elem` "+-*/")
