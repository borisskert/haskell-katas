module Codewars.Exercise.Fear {- of the dark -} where

-- https://www.codewars.com/kata/55b1fd84a24ad00b32000075/train/haskell

amIAfraid :: String -> Int -> Bool
amIAfraid "Monday" = (== 12)
amIAfraid "Tuesday" = (> 95)
amIAfraid "Wednesday" = (== 34)
amIAfraid "Thursday" = (== 0)
amIAfraid "Friday" = even
amIAfraid "Saturday" = (== 56)
amIAfraid "Sunday" = (== 666) . abs
