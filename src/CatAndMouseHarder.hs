module CatAndMouseHarder where

--  https://www.codewars.com/kata/57ee2a1b7b45efcf700001bf/train/haskell

import Data.List ((\\))
import Data.List.Split (divvy)

catMouse :: String -> Int -> Either String String
catMouse cs n
  | not . ("DCm" `isSubset`) $ cs = Left "boring without all three"
  | not isCaught = Right "Escaped!"
  | "mDC" == noGaps = Right "Protected!"
  | "CDm" == noGaps = Right "Protected!"
  | otherwise = Right "Caught!"
  where
    noGaps = filter (/= '.') cs
    isCaught = any ("mC" `isSubset`) . divvy jump 1 $ cs
    jump = min (n + 1) (length cs)

isSubset :: (Eq a) => [a] -> [a] -> Bool
isSubset ys xs = null $ ys \\ xs
