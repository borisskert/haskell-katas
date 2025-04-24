module AddBinary (addBinary) where

-- https://www.codewars.com/kata/551f37452ff852b7bd000139/train/haskell
addBinary :: Int -> Int -> String
addBinary a = intToBinary . (a +)

intToBinary :: Int -> String
intToBinary n
  | div2 > 0 = intToBinary div2 ++ [digit]
  | otherwise = [digit]
  where
    div2 = n `div` 2
    rest = n `mod` 2
    digit
      | rest == 0 = '0'
      | otherwise = '1'

-- #againwhatlearned

-- 1. use `showBin` of `Numeric` module
-- addBinary a b = showBin (a+b) ""

-- 2. use `showIntAtBase` of `Numeric` module
-- addBinary a b = showIntAtBase 2 intToDigit (a+b) ""

-- 3. Simple `toBinary` function
-- toBinary :: Int -> String
-- toBinary 0 = "0"
-- toBinary 1 = "1"
-- toBinary n = toBinary (n `div` 2) <> toBinary (n `mod` 2)
