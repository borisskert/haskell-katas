module Xbonacci (xbonacci) where

--  https://www.codewars.com/kata/556e0fccc392c527f20000c5/train/haskell

xbonacci :: Num a => [a] -> Int -> [a]
xbonacci as n = map memoized [0 .. (n - 1)]
  where
    size = length as :: Int

    memoized index = numbers !! index
      where
        find x
          | x < size = as !! x
          | otherwise = sum . map memoized $ indices
          where
            indices = [(x - size) .. (x - 1)]

        numbers = map find [0 ..]
