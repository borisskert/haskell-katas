module MaxProduct where

-- https://www.codewars.com/kata/592e2446dc403b132d0000be/train/haskell

maximumProduct :: [Integer] -> Integer
maximumProduct [] = 0
maximumProduct xs
  | product xs < 0 = maximum negatives
  | product xs > 0 && null positives = minimum negatives
  | product xs > 0 = minimum positives
  | product xs == 0 && productWithoutFirstZero < 0 = minimum negatives
  | product xs == 0 && productWithoutFirstZero == 0 && (not . null $ negatives) = minimum negatives
  | otherwise = 0
  where
    negatives = filter (< 0) xs
    positives = filter (> 0) xs

    productWithoutFirstZero = product . withoutFirstZero $ xs :: Integer

    withoutFirstZero :: [Integer] -> [Integer]
    withoutFirstZero [] = []
    withoutFirstZero (x : xs)
      | x == 0 = xs
      | otherwise = x : withoutFirstZero xs
