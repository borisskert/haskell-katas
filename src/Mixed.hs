module Mixed where

-- https://www.codewars.com/kata/57eaeb9578748ff92a000009/train/haskell

sumMix :: [Either String Int] -> Int
sumMix = sum . map sumOne


sumOne :: Either String Int -> Int
sumOne (Right i) = i
sumOne (Left s) = read s
