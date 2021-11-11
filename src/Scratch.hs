module Scratch where

-- https://www.codewars.com/kata/594a1822a2db9e93bd0001d4/train/haskell

scratch :: [String] -> Int
scratch = sum . map toPrice
  where
    toPrice :: String -> Int
    toPrice a
      | isWinner names = price
      | otherwise = 0
      where
        names = words a
        price = read . last $ names
        
        isWinner :: [String] -> Bool
        isWinner (a:b:c:_)
          | a == b && b == c = True
          | otherwise = False
