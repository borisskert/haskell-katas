module CodeWars.UniqueNumber where

-- https://www.codewars.com/kata/585d7d5adb20cf33cb000235/train/haskell

import Data.List (group, sort)

getUnique :: [Int] -> Int
getUnique = head . head . filter ((== 1) . length) . group . sort
