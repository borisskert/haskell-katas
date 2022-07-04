module ToSquareRootOrNotToSquareRoot (squareOrSquareRoot) where

--  https://www.codewars.com/kata/57f6ad55cca6e045d2000627/train/haskell

import Data.Maybe (fromMaybe)

squareOrSquareRoot :: [Int] -> [Int]
squareOrSquareRoot = map (\x -> fromMaybe (x * x) . squareRoot $ x)

squareRoot :: Int -> Maybe Int
squareRoot n
  | root * root == n = Just root
  | otherwise = Nothing
  where
    root = floor . sqrt . (fromIntegral :: Int -> Double) $ n
