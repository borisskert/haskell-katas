module CatsAndShelves (solve) where

-- https://www.codewars.com/kata/62c93765cef6f10030dfa92b/train/haskell

solve :: Word -> Word -> Word
solve start end = jumps (end - start)

jumps :: Word -> Word
jumps 0 = 0
jumps 1 = 1
jumps 2 = 2
jumps n = jumps (n - 3) + 1
