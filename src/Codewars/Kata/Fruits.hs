module Codewars.Kata.Fruits where

-- https://www.codewars.com/kata/557af4c6169ac832300000ba/train/haskell

--best practice:
-- import Data.List
-- import Data.Char
-- import Data.Maybe

-- removeRotten :: [String] -> [String]
-- removeRotten = map ((flip maybe (map toLower)) <*> (stripPrefix "rotten"))


import Data.List (isPrefixOf)
import Data.Char (toLower)


removeRotten :: [String] -> [String]
removeRotten = map remove
  where
    remove :: String -> String
    remove fruit
      | "rotten" `isPrefixOf` fruit = map toLower . reverse . take (length fruit - 6) . reverse $ fruit
      | otherwise = fruit
