module SaveChristmas (determineTime) where

-- https://www.codewars.com/kata/5857e8bb9948644aa1000246/train/haskell

import Data.Maybe (fromJust)
import Data.Time (DiffTime, defaultTimeLocale, diffTimeToPicoseconds, parseTimeM)

determineTime :: [String] -> Bool
determineTime arr = needed <= oneDay
  where
    needed = sum . map readPicoseconds $ arr :: Integer
    oneDay = readPicoseconds "24:00:00"

readPicoseconds :: String -> Integer
readPicoseconds = diffTimeToPicoseconds . fromJust . readDiffTime

readDiffTime :: String -> Maybe DiffTime
readDiffTime = parseTimeM True defaultTimeLocale "%H:%M:%S"
