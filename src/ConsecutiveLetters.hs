module ConsecutiveLetters where 

-- https://www.codewars.com/kata/5ce6728c939bf80029988b57/train/haskell

--clever:
-- import Data.List (isInfixOf, sort)

-- solve :: String -> Bool
-- solve = (`isInfixOf` ['a'..'z']) . sort


import Data.Char (ord)
import Data.List (sort)


solve :: String -> Bool
solve = areConsecutive . sort
  where
    areConsecutive :: String -> Bool
    areConsecutive [x] = True
    areConsecutive (x1:x2:others)
      | ord x2 - ord x1 == 1 = solve (x2:others)
      | otherwise = False
