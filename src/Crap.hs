module Crap where

type Garden = [String]

-- https://www.codewars.com/kata/57faa6ff9610ce181b000028/train/haskell

crap :: Garden -> Int -> Int -> String
crap garden bags capacity
  | isDogPresent = "Dog!!"
  | isClean = "Clean"
  | otherwise = "Cr@p"
  where
    crapCount = countCrap garden :: Int
    isDogPresent = hasDog garden :: Bool
    isClean = bags * capacity >= crapCount :: Bool


hasDog :: Garden -> Bool
hasDog = (> 0) . sum . map (length . filter (== 'D'))


countCrap :: Garden -> Int
countCrap = sum . map (length . filter (== '@'))
