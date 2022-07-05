module CheckSameCase (sameCase) where

--  https://www.codewars.com/kata/5dd462a573ee6d0014ce715b/train/haskell

import Data.Char (isLower, isUpper)

sameCase :: Char -> Char -> Int
sameCase a b
  | caseA == NoLetter || caseB == NoLetter = -1
  | caseA == caseB = 1
  | otherwise = 0
  where
    caseA = caseOf a
    caseB = caseOf b

data Case = Upper | Lower | NoLetter deriving (Eq)

caseOf :: Char -> Case
caseOf c
  | isUpper c = Upper
  | isLower c = Lower
  | otherwise = NoLetter
