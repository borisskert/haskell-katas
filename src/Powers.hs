module Powers (powers) where

-- https://www.codewars.com/kata/5d9f95424a336600278a9632/train/haskell

powers :: Int -> [Int]
powers = map ((2 ^) . fst) . filter ((== True) . snd) . zip [0..] . reverse . decToBin


decToBin :: Int -> [Bool]
decToBin n
  | div2 > 0 = decToBin div2 ++ [rest]
  | otherwise = [rest]
  where
    div2 = n `div` 2
    rest = n `mod` 2 == 1
