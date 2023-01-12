module Codewars.Kata.SJF (sjf) where

-- https://www.codewars.com/kata/550cc572b9e7b563be00054f/train/haskell

type CC    = Integer
type Job   = CC
type Index = Int

sjf :: [Job] -> Index -> CC
sjf xs i = sum . map snd . filter isTakenFirst . zip [0 ..] $ xs
  where
    x = xs !! i
    isTakenFirst = anyOf [allOf [(x ==) . snd, (<= i) . fst], (< x) . snd]

allOf :: [a -> Bool] -> a -> Bool
allOf [] _ = True
allOf (f : fs) x
  | f x = allOf fs x
  | otherwise = False

anyOf :: [a -> Bool] -> a -> Bool
anyOf [] _ = False
anyOf (f : fs) x
  | f x = True
  | otherwise = anyOf fs x
