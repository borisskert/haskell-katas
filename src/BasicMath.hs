module BasicMath (calc) where

-- https://www.codewars.com/kata/5809b62808ad92e31b000031/train/haskell

import Data.List.Split (splitWhen)


calc :: String -> String
calc input = show $ calcNumbersWithOps numbers ops
  where
    numbers = toNumbers input :: [Int]
    ops = toOps input :: [Int -> Int -> Int]


calcNumbersWithOps :: [Int] -> [Int -> Int -> Int] -> Int
calcNumbersWithOps [number] [] = number
calcNumbersWithOps numbers ops = last ops (calcNumbersWithOps (init numbers) (init ops)) (last numbers)


toNumbers :: String -> [Int]
toNumbers = map read . filter (not . null) . splitWhen (`notElem` "0123456789")


toOps :: String -> [Int -> Int -> Int]
toOps = map toOp . filter (not . null) . splitWhen (`elem` "0123456789")


toOp :: String -> (Int -> Int -> Int)
toOp "plus" = (+)
toOp "minus" = (-)
