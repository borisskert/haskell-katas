module SF114 where

-- https://www.codewars.com/kata/589d237fdfdef0239a00002e/train/haskell

import Data.Char (chr, ord)

abacaba :: Int -> Char
abacaba x = go 1 x
  where
    go :: Int -> Int -> Char
    go i x
      | odd x = toChar i
      | otherwise = go (i + 1) (x `div` 2)
      where
        toChar :: Int -> Char
        toChar = chr . (+ offset)
          where
            offset = ord 'a' - 1
