module Balance (balance) where

-- https://www.codewars.com/kata/57fb44a12b53146fe1000136/train/haskell

import Preloaded (Comparison (..))
import Prelude hiding (Either (..))

balance :: String -> String -> Comparison
balance left right
  | leftWeight == rightWeight = Balance
  | leftWeight > rightWeight = Left
  | otherwise = Right
  where
    leftWeight = sum . map weightOf $ left
    rightWeight = sum . map weightOf $ right

weightOf :: Char -> Int
weightOf '!' = 2
weightOf '?' = 3
weightOf _ = 0
