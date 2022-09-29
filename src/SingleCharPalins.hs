module SingleCharPalins where

--  https://www.codewars.com/kata/5a2c22271f7f709eaa0005d3/train/haskell

import Data.List (inits, tails)

solve :: String -> String
solve xs
  | isPalindrome xs = "OK"
  | any isPalindrome removedOne = "remove one"
  | otherwise = "not possible"
  where
    inits' = init . inits $ xs
    tails' = tail . tails $ xs
    removedOne = zipWith (++) inits' tails'

isPalindrome :: String -> Bool
isPalindrome cs = cs == reverse cs
