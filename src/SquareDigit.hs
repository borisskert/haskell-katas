module SquareDigit where
import Data.Char

-- https://www.codewars.com/kata/546e2562b03326a88e000020/train/haskell

squareDigit :: Int -> Int
squareDigit number
  | number < 0 = -squaredDigits
  | otherwise = squaredDigits
  where
    digits = map digitToInt $ show $ abs number :: [Int]
    squaredDigits = read $ concat $ map show $ map (^2) $ digits :: Int
