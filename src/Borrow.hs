module Borrow where

-- https://www.codewars.com/kata/57d2ba8095497e484e00002e/train/haskell

import Data.Char (isLetter, toLower, ord)


borrow :: String -> String
borrow = map toLower . filter isGoodForBorrow
  where
    isGoodForBorrow :: Char -> Bool
    isGoodForBorrow c = (\x -> (x < 255) && isLetter c) . ord $ c
