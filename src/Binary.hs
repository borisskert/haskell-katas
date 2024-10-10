module Binary (toBinary) where

-- https://www.codewars.com/kata/59fca81a5712f9fa4700159a/train/haskell

toBinary :: Integer -> Integer
toBinary = bitsToBinary . integerToBits

integerToBits :: Integer -> [Bool]
integerToBits 0 = []
integerToBits x
  | even x = False : integerToBits (x `div` 2)
  | otherwise = True : integerToBits (x `div` 2)

bitsToBinary :: [Bool] -> Integer
bitsToBinary [] = 0
bitsToBinary (False : xs) = (* 10) . bitsToBinary $ xs
bitsToBinary (True : xs) = (+ 1) . (* 10) . bitsToBinary $ xs

-- #againwhatlearned: Use `showBin` of the `Numeric` module
-- import Numeric (showBin)
-- toBinary :: Integer -> Integer
-- toBinary = read . flip showBin ""
