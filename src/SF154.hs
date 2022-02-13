module SF154 where

-- https://www.codewars.com/kata/58ad09d6154165a1c80000d1/train/haskell

zeroAndOne :: String -> Int
zeroAndOne [] = 0
zeroAndOne [_] = 1
zeroAndOne (c1 : c2 : cs)
  | c1 /= c2 = zeroAndOne cs
  | otherwise = 1 + zeroAndOne (c2 : cs)
