module IdenticalElements (duplicateElements) where

-- https://www.codewars.com/kata/583ebb9328a0c034490001ba/train/haskell

duplicateElements :: [Int] -> [Int] -> Bool
duplicateElements xs = any (`elem` xs)


-- interresting function:

-- - import Data.List (intersect): http://www.zvon.org/other/haskell/Outputlist/intersect_f.html
