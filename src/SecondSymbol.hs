module SecondSymbol (secondSymbol) where

-- https://www.codewars.com/kata/63f96036b15a210058300ca9/train/haskell

secondSymbol :: String -> Char -> Int
secondSymbol xs c
  | length letters < 2 = -1
  | otherwise = fst . head . tail $ letters
  where
    letters = filter ((== c) . snd) . zip [0 ..] $ xs :: [(Int, Char)]

-- best practice in codewars
-- import Data.List (elemIndices)

-- secondSymbol :: Eq a => [a] -> a -> Int
-- secondSymbol xs x = case elemIndices x xs of
--   (_ : i : _) -> i
--   _anyOther -> -1
