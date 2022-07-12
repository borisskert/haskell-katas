module Codewars.Kata.Which where

--  https://www.codewars.com/kata/550554fd08b86f84fe000a58/train/haskell

import Data.List (isInfixOf, nub, sort)

inArray :: [String] -> [String] -> [String]
inArray a1 a2 = sort . nub . filter (\x -> any (\y -> x `isInfixOf` y) a2) $ a1
