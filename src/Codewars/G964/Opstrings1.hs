module Codewars.G964.Opstrings1 (rot90Counter, diag2Sym, selfieDiag2Counterclock, oper) where

--  https://www.codewars.com/kata/56dbf59b0a10feb08c000227/train/haskell

import Data.List (intercalate)

rot90Counter :: [Char] -> [Char]
rot90Counter = intercalate "\n" . rot90Counter' . lines

diag2Sym :: [Char] -> [Char]
diag2Sym = intercalate "\n" . diag2Sym' . lines

selfieDiag2Counterclock :: [Char] -> [Char]
selfieDiag2Counterclock = intercalate "\n" . selfieDiag2Counterclock' . lines

oper :: (String -> String) -> String -> String
oper fct = fct

rot90Counter' :: [String] -> [String]
rot90Counter' ls = map (\x -> map (!! x) ls) [(n - 1), (n - 2) .. 0]
  where
    n = length ls :: Int

diag2Sym' :: [String] -> [String]
diag2Sym' ls = map (\x -> map (!! x) . reverse $ ls) [(n - 1), (n - 2) .. 0]
  where
    n = length ls :: Int

selfieDiag2Counterclock' :: [String] -> [String]
selfieDiag2Counterclock' ls = zipWith (\a b -> intercalate "|" [a, b, reverse b]) ls d
  where
    d = diag2Sym' ls
