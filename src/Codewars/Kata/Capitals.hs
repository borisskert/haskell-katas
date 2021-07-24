module Codewars.Kata.Capitals where

--  https://www.codewars.com/kata/539ee3b6757843632d00026b/train/haskell

import Data.Char (isUpper)


capitals :: String -> [Int]
capitals text = map indexOnly $ filter isUpperChar $ withIndices
  where
    withIndices = zip [0..] text :: [(Int, Char)]
    isUpperChar (_, char) = isUpper char :: Bool
    indexOnly (index, _) = index :: Int
