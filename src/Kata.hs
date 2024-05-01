module Kata (landPerimeter) where

-- https://www.codewars.com/kata/5839c48f0cf94640a20001d3/train/haskell

landPerimeter :: [String] -> String
landPerimeter arr = format . sum . zipWith perimeterOfLine [0 ..] $ arr
  where
    perimeterOfLine :: Int -> [Char] -> Int
    perimeterOfLine y row = sum . zipWith perimeterOfCell [0 ..] $ row
      where
        perimeterOfCell :: Int -> Char -> Int
        perimeterOfCell x c
          | isSea c = 0
          | otherwise = left + top + right + bottom
          where
            left :: Int
            left
              | x == 0 = 1
              | otherwise = if isSea adjacent then 1 else 0
              where
                adjacent = row !! (x - 1)

            top :: Int
            top
              | y == 0 = 1
              | otherwise = if isSea adjacent then 1 else 0
              where
                adjacent = (arr !! (y - 1)) !! x

            right :: Int
            right
              | x == length row - 1 = 1
              | otherwise = if isSea adjacent then 1 else 0
              where
                adjacent = row !! (x + 1)

            bottom :: Int
            bottom
              | y == length arr - 1 = 1
              | otherwise = if isSea adjacent then 1 else 0
              where
                adjacent = (arr !! (y + 1)) !! x

    isSea :: Char -> Bool
    isSea = (== 'O')

format :: Int -> String
format perimeter = "Total land perimeter: " ++ show perimeter
