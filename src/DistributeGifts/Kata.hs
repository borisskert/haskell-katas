module DistributeGifts.Kata (distributeGifts) where

-- https://www.codewars.com/kata/584ed874bbf24eb9490001e5/train/haskell

distributeGifts :: [Int] -> Int
distributeGifts = sum . map biggestFactor
  where
    biggestFactor :: Int -> Int
    biggestFactor 2 = 2
    biggestFactor x
      | null factors = x
      | otherwise = fst . head $ factors
      where
        root = floor . sqrt . fromIntegral $ x :: Int
        factors = filter ((== 0) . snd) . map (x `divMod`) . (2 :) $ [3, 5 .. root]
