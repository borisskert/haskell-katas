module StringsEndsWith (solution) where

--  https://www.codewars.com/kata/51f2d1cafc9c0f745c00037d/train/haskell

--best practice
--solution :: String -> String -> Bool
--solution = flip isSuffixOf


solution :: String -> String -> Bool
solution = endsWith


endsWith :: String -> String -> Bool
endsWith _ "" = True
endsWith "" _ = False
endsWith text end
  | last text == last end = solution (init text) (init end) 
  | otherwise = False
