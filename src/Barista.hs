module Barista (barista) where

import Data.List (sort)

--  https://www.codewars.com/kata/6167e70fc9bd9b00565ffa4e/train/haskell

barista :: [Int] -> Int
barista [] = 0
barista xs = sum . scanl (+) (head sorted) . map (+ 2) . tail $ sorted
  where
    sorted = sort xs
