module ProductOrSum (productOrSum) where

-- https://www.codewars.com/kata/5c4cb8fc3cf185147a5bdd02/train/haskell

import ProductOrSum.Preloaded (ProductOrSum(..))
import Data.List (sort)

productOrSum :: [Int] -> Int -> ProductOrSum
productOrSum xs i
  | sumX > productX = Sum
  | sumX < productX = Product
  | otherwise = Same
  where
    sumX = sum . take i . reverse . sort $ xs
    productX = product . take i . sort $ xs
