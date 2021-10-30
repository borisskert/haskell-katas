module ComfortableWords (comfortableWord) where

-- https://www.codewars.com/kata/56684677dc75e3de2500002b/train/haskell

import Prelude hiding (Left, Right)

comfortableWord :: String -> Bool
comfortableWord = isAlternating . map toHand
  where
    isAlternating :: [Hand] -> Bool
    isAlternating [] = True
    isAlternating [_] = True
    isAlternating [h1,h2] = h1 /= h2
    isAlternating (h1:h2:others) = h1 /= h2 && isAlternating (h2:others)

data Hand = Left | Right deriving (Bounded, Enum, Show, Eq)

toHand :: Char -> Hand
toHand char
  | char `elem` "qwertasdfgzxcvb" = Left
  | char `elem` "yuiophjklnm" = Right
