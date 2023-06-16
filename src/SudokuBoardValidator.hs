module SudokuBoardValidator (validateSudoku) where

-- https://www.codewars.com/kata/63d1bac72de941033dbf87ae/train/haskell

import Data.List (sort, transpose)
import Data.List.Split (chunksOf)

type Sudoku = [[Int]]

validateSudoku :: Sudoku -> Bool
validateSudoku xs = isValid xs && isValid rotated && isValid blocks
  where
    rotated = transpose xs
    blocks = toBlocks xs

toBlocks :: Sudoku -> [[Int]]
toBlocks = concatMap (map concat . transpose . map (chunksOf 3)) . chunksOf 3

isValid :: [[Int]] -> Bool
isValid = (== 9) . length . filter (== [1 .. 9]) . map sort
