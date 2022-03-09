module SumOfJusts where

-- https://www.codewars.com/kata/57da7ca63150b02e6400026b/train/haskell

import Data.Maybe (catMaybes)

sumJusts :: [Maybe Integer] -> Maybe Integer
sumJusts = Just . sum . catMaybes
