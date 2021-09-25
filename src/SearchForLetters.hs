module SearchForLetters (search) where

-- https://www.codewars.com/kata/52dbae61ca039685460001ae/train/haskell

--best practice:
-- import Data.Bool (bool)
-- import Data.Char (toLower)

-- search :: String -> String
-- search s = map (bool '0' '1' . (`elem` map toLower s)) ['a'..'z']


import Data.Char (ord, toUpper)


search :: String -> String
search = showBin . foldBinOr . map toBin . filter isLetter


isLetter :: Char -> Bool
isLetter x = ordX >= ordA && ordX <= ordZ
  where
    ordA = ord 'A'
    ordZ = ord 'Z'
    ordX = ord . toUpper $ x


foldBinOr :: Foldable t => t [Bool] -> [Bool]
foldBinOr = foldl bitwiseOr empty
  where
    empty = replicate 26 False :: [Bool]


toBin :: Char -> [Bool]
toBin = decToBin . (+ offset) . ord . toUpper
  where
    offset = -65 :: Int


decToBin :: Int -> [Bool]
decToBin n = start ++ [True] ++ end
  where
    start = replicate n False :: [Bool]
    end = replicate (26 - n - 1) False :: [Bool]


showBin :: [Bool] -> String
showBin = map (\x -> if x then '1' else '0')


bitwiseOr :: [Bool] -> [Bool] -> [Bool]
bitwiseOr [] [] = []
bitwiseOr a [] = a
bitwiseOr [] b = b
bitwiseOr (a:othersA) (b:othersB) = (a || b) : bitwiseOr othersA othersB
