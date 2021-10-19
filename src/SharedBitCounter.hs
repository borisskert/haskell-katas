module SharedBitCounter (sharedBits) where

-- https://www.codewars.com/kata/58a5aeb893b79949eb0000f1/train/haskell

sharedBits :: Int -> Int -> Bool
sharedBits a b = (> 1) . length . filter (`elem` onesB) $ onesA
  where
    onesA = map fst . filter ((== True). snd) . zip [0..] . reverse . decToBin $ a :: [Int]
    onesB = map fst . filter ((== True). snd) . zip [0..] . reverse . decToBin $ b :: [Int]


decToBin :: Int -> [Bool]
decToBin n
  | div2 > 0 = decToBin div2 ++ [rest]
  | otherwise = [rest]
  where
    div2 = n `div` 2
    rest = n `mod` 2 == 1


-- best practise:
-- import Data.Bits ((.&.),popCount)

-- sharedBits :: Int -> Int -> Bool
-- sharedBits a b = popCount (a .&. b) > 1
