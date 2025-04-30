module StringScramble (scramble) where

-- https://www.codewars.com/kata/5822d89270ca28c85c0000f3/train/haskell

scramble :: String -> [Int] -> String
scramble xs indices = map getChar [0 .. maxIndex]
  where
    maxIndex = length xs - 1
    indexed = zip indices xs

    getChar :: Int -> Char
    getChar i = case lookup i indexed of
      Just c -> c
      Nothing -> error "Not found"

-- # Best practice
-- import Data.List (sortOn)
-- scramble s = map fst . sortOn snd . zip s
