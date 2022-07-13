module Codewars.Kata.BreakCamelCase where

--  https://www.codewars.com/kata/5208f99aee097e6552000148/train/haskell

import Data.Char (isLower, isUpper)
import Data.List.Split (divvy)

solution :: String -> String
solution cs = (++ [last cs]) . concatMap break . divvy 2 1 $ cs
  where
    break :: String -> String
    break (a : b : _)
      | isLower a && isUpper b = a : " "
      | isUpper a && isUpper b = a : " "
      | otherwise = [a]
