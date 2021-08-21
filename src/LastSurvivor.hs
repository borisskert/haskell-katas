module LastSurvivor (lastSurvivor) where

-- https://www.codewars.com/kata/609eee71109f860006c377d1/train/haskell

lastSurvivor :: String -> [Int] -> Char
lastSurvivor text indices = head survivors
  where
    survivors = foldl remove text indices :: String


remove :: String -> Int -> String
remove text 0 = tail text
remove text index = head text : remove (tail text) (index - 1)
