module Repeated (isConsecutive) where

-- https://www.codewars.com/kata/5ee8ba31b44cc30032cbce04/train/haskell

import Data.List (sort, group)

isConsecutive :: String -> Bool
isConsecutive xs = (sort . compress $ xs) == (compress . sort $ xs)

compress :: String -> String
compress = map head . group
