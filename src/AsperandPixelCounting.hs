module AsperandPixelCounting (countPixels) where

-- https://www.codewars.com/kata/63d54b5d05992e0046752389/train/haskell

countPixels :: Int -> Int
countPixels 1 = 11
countPixels n = 8 * n + 2
