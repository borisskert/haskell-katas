module CutTheRopes (cutTheRopes) where

-- https://www.codewars.com/kata/58ad388555bf4c80e800001e/train/haskell

import Data.List (group, sort, tails)

cutTheRopes :: [Int] -> [Int]
cutTheRopes = init . map (sum . map length) . tails . group . sort
