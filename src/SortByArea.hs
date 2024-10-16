module SortByArea (sortByArea) where

-- https://www.codewars.com/kata/5a1ebc2480171f29cf0000e5/train/haskell

import Data.List (sortOn)
import Data.Ord (comparing)
import Preloaded (Shape (..))

sortByArea :: [Shape] -> [Shape]
sortByArea = sortOn toArea

toArea :: Shape -> Double
toArea (Rectangle a b) = a * b
toArea (Circle1 r) = r * r * pi
