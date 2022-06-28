module Codewars.G964.Getmiddle where

--  https://www.codewars.com/kata/56747fd5cb988479af000028/train/haskell

getMiddle :: String -> String
getMiddle s
  | null s = ""
  | even . length $ s = [s !! (mid - 1), s !! mid]
  | otherwise = (: []) . (!! mid) $ s
  where
    mid = (`div` 2) . length $ s
