module SF23 (squareDigitsSequence) where

--  https://www.codewars.com/kata/5886d65e427c27afeb0000c1/train/haskell

squareDigitsSequence :: Int -> Int
squareDigitsSequence n = mkSequence [n] + 1

mkSequence :: [Int] -> Int
mkSequence xs
  | n' `elem` xs = length xs
  | otherwise = mkSequence (n' : xs)
  where
    n = head xs
    n' = next n

next :: Int -> Int
next = sum . map (^ (2 :: Int)) . intDigits

intDigits :: Int -> [Int]
intDigits n
  | n < 10 = [n]
  | otherwise = intDigits n' ++ [digit]
  where
    (n', digit) = n `divMod` 10
