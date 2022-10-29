module Codewars.G964.Opstrings4 (rot90Clock, diag1Sym, selfieAndDiag1, oper) where

-- https://www.codewars.com/kata/56dbeec613c2f63be4000be6/train/haskell

import Data.List (intercalate)

rot90Clock :: [Char] -> [Char]
rot90Clock strng = intercalate "\n" . map (\x -> map (!! x) . reverse $ ls) $ [0 .. (n - 1)]
  where
    ls = lines strng :: [String]
    n = length ls :: Int

diag1Sym :: [Char] -> [Char]
diag1Sym = intercalate "\n" . diag1SymLines

selfieAndDiag1 :: [Char] -> [Char]
selfieAndDiag1 strng = intercalate "\n" (zipWith (\l d -> intercalate "|" [l, d]) ls diag)
  where
    ls = lines strng :: [String]
    diag = diag1SymLines strng :: [String]

oper :: (String -> String) -> String -> String
oper fct = fct

diag1SymLines :: [Char] -> [String]
diag1SymLines strng = map (\x -> map (!! x) ls) [0 .. (n - 1)]
  where
    ls = lines strng :: [String]
    n = length ls :: Int

-- #againwhatlearned
-- use `transpose` from Data.List
-- Input: transpose ["ABCD","abcd"]
-- Output: ["Aa","Bb","Cc","Dd"]
