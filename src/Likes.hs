module Likes where

-- https://www.codewars.com/kata/5266876b8f4bf2da9b000362/train/haskell

import Text.Printf (printf)

likes :: [String] -> String
likes [] = "no one likes this"
likes [x] = x ++ " likes this"
likes [x1, x2] = printf "%s and %s like this" x1 x2
likes [x1, x2, x3] = printf "%s, %s and %s like this" x1 x2 x3
likes (x1 : x2 : xs) = printf "%s, %s and %d others like this" x1 x2 (length xs)
