module SingleDigit (singleDigit) where

-- https://www.codewars.com/kata/5a7778790136a132a00000c1/train/haskell

singleDigit :: Integer -> Int
singleDigit x 
  | x < 10 = fromInteger x
  | otherwise = singleDigit . crossSum $ x


-- import Data.Bits (popCount)
crossSum :: Integer -> Integer
crossSum = toInteger . length . filter (== True) . decToBin


decToBin :: Integer -> [Bool]
decToBin n
  | div2 > 0 = decToBin div2 ++ [rest]
  | otherwise = [rest]
  where
    div2 = n `div` 2
    rest = n `mod` 2 == 1


-- best practice:
-- import Data.Bits (popCount)

-- singleDigit :: Integer -> Int
-- singleDigit = fromIntegral . until (< 10) (fromIntegral . popCount)
