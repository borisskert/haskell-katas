module PowerOfFour where

-- https://www.codewars.com/kata/544d114f84e41094a9000439/train/haskell

isPowerOf4 :: (Integral n, Show n) => n -> Bool
isPowerOf4 n = (== n) . head . dropWhile (< n) . map (4 ^) $ [0 ..]
