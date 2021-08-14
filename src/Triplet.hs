module Triplet where

--  https://www.codewars.com/kata/5aa1bcda373c2eb596000112/train/haskell

import Data.List (sort, nub)


maxTriSum :: [Integer] -> Integer
maxTriSum = sum . take 3 . reverse . sort . nub
