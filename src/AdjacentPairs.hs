module AdjacentPairs where

import Data.Char (toLower)
import Data.List (group)

--  https://www.codewars.com/kata/5245a9138ca049e9a10007b8/train/haskell

countAdjacentPairs :: String -> Int
countAdjacentPairs = length . filter ((> 1) . length) . group . words . map toLower
