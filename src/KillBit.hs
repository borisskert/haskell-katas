module KillBit where

-- https://www.codewars.com/kata/58844f1a76933b1cd0000023/train/haskell

killKthBit :: Int -> Int -> Int
killKthBit n k =
  binToDec
    . reverse
    . map (\(index, value) -> if index == k then False else value)
    . zip [1 ..]
    . reverse
    . decToBin
    $ n

decToBin :: Int -> [Bool]
decToBin n
  | div2 > 0 = decToBin div2 ++ [rest]
  | otherwise = [rest]
  where
    div2 = n `div` 2
    rest = n `mod` 2 == 1

binToDec :: [Bool] -> Int
binToDec [] = 0
binToDec b = binToDec (init b) * 2 + value
  where
    value = if last b then 1 else 0


-- best practice:
-- import Data.Bits
-- killKthBit :: Int -> Int -> Int
-- killKthBit n k = clearBit n (k-1)
