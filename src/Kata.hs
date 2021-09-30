module Kata (longest) where

-- https://www.codewars.com/kata/58670300f04e7449290000e5/train/haskell

import Data.List (sort)

longest :: [String] -> Int
longest = maximum . map length
