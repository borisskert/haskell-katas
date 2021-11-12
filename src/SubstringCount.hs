module SubstringCount where

-- https://www.codewars.com/kata/5168b125faced29f66000005/train/haskell

import Data.List.Split (divvy)

solution :: String -> String -> Int
solution xs x = length . filter (== x) . divvy (length x) 1 $ xs
