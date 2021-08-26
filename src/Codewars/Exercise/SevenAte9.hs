module Codewars.Exercise.SevenAte9 where

-- https://www.codewars.com/kata/559f44187fa851efad000087

sevenAte9 :: String -> String
sevenAte9 [] = []
sevenAte9 [c] = [c]
sevenAte9 [c1, c2] = [c1, c2]
sevenAte9 (c1:c2:c3:others)
  | c1 == '7' && c2 == '9' && c3 == '7' = "7" ++ sevenAte9 (c3:others)
  | otherwise = c1 : sevenAte9 (c2:c3:others)
