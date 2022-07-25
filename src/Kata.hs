module Kata (remove) where

--  https://www.codewars.com/kata/57fafb6d2b5314c839000195/train/haskell

remove :: String -> String
remove = unwords . filter (not . containsExactlyOne) . words

containsExactlyOne :: String -> Bool
containsExactlyOne = (== 1) . length . filter (== '!')
