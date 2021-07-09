module Bonus where

-- https://www.codewars.com/kata/56f6ad906b88de513f000d96/train/haskell

iHazBonus :: Float->  Bool -> String
iHazBonus salary True = formatDollars (salary * 10)
iHazBonus salary False = formatDollars salary

formatDollars :: Float -> String
formatDollars amount = "$" ++ show amount
