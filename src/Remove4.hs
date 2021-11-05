module Remove4 (remove) where

-- https://www.codewars.com/kata/57fafd0ed80daac48800019f/train/haskell

remove :: String -> String
remove s = text ++ exclamationMarks
  where
    exclamationMarks = filter (== '!') s :: String
    text = filter (/= '!') s :: String


-- best practice:
-- import Data.List

-- remove :: String -> String
-- remove = sortOn (=='!')
