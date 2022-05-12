module HumanTime where

-- https://www.codewars.com/kata/52685f7382004e774f0001f7/train/haskell

import Data.Time (DiffTime, defaultTimeLocale, formatTime, secondsToDiffTime)

humanReadable :: Int -> String
humanReadable x = formatTime defaultTimeLocale "%02h:%0M:%0S" diff
  where
    diff = secondsToDiffTime . toInteger $ x :: DiffTime
