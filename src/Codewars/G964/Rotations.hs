module Codewars.G964.Rotations where

--  https://www.codewars.com/kata/5700c9acc1555755be00027e/train/haskell

--best practice:
--import Data.List (inits, tails)
--
--containAllRots :: String -> [String] -> Bool
--containAllRots s arr = all (`elem` arr) . init . zipWith (++) (tails s) . inits $ s

import Data.List (nub)

containAllRots :: String -> [String] -> Bool
containAllRots [] = \_ -> True
containAllRots strng = (==) (length rotated) . length . filter (`elem` rotated)
  where
    count = length strng
    rotated = nub $ take count $ rotate strng


rotate :: String -> [String]
rotate strng = [rotated] ++ rotate rotated
  where
    rotated = last strng : init strng
