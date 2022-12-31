module YesNoYesNo (yesNo) where

-- https://www.codewars.com/kata/573c84bf0addf9568d001299/train/haskell

yesNo :: [a] -> [a]
yesNo = yes

yes :: [a] -> [a]
yes [] = []
yes [x] = [x]
yes (x : xs) = x : no xs

no :: [a] -> [a]
no [] = []
no [x] = [x]
no (x : xs) = yes (xs ++ [x])
