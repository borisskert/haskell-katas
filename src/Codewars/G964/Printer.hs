module Codewars.G964.Printer where

--  https://www.codewars.com/kata/56541980fa08ab47a0000040/train/haskell

printerError :: [Char] -> [Char]
printerError s = (show $ length $ filter isBad s) ++ "/" ++ show (length s)


isBad :: Char -> Bool
isBad = (> 'm')
