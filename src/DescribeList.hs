module DescribeList where

-- https://www.codewars.com/kata/57a4a3e653ba3346bc000810/train/haskell

describeList :: [a] -> String
describeList [] = "empty"
describeList [_] = "singleton"
describeList _ = "longer"
