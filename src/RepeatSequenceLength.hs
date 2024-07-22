module RepeatSequenceLength (repeatSequenceLength) where

-- https://www.codewars.com/kata/58a3f57ecebc06bfcb00009c/train/haskell

repeatSequenceLength :: Int -> Int
repeatSequenceLength 1 = 1
repeatSequenceLength 4 = 8
repeatSequenceLength x = repeatSequenceLength . sumSquare $ x

sumSquare :: Int -> Int
sumSquare n = sum . map (^ 2) . digits $ n
  where
    digits :: Int -> [Int]
    digits 0 = []
    digits n = n `mod` 10 : digits (n `div` 10)
