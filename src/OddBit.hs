module OddBit where
import Data.Word (Word32)

-- https://www.codewars.com/kata/5d6f49d85e45290016bf4718/train/haskell

anyOdd :: Word32 -> Int
anyOdd = boolToInt . any ((==) True . snd) . filter (odd . fst) . zip [0..] . reverse . decToBin . fromIntegral
  where
    boolToInt b
      | b = 1
      | otherwise = 0


decToBin :: Int -> [Bool]
decToBin n
  | div2 > 0 = decToBin div2 ++ [rest]
  | otherwise = [rest]
  where
    div2 = n `div` 2
    rest = n `mod` 2 == 1
