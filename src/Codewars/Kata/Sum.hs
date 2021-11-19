module Codewars.Kata.Sum where

-- https://www.codewars.com/kata/551e51155ed5ab41450006e1/train/haskell

sumTimesTables :: [Integer] -> Integer -> Integer -> Integer
sumTimesTables tbl n m = sum . map (\x -> sum . map (\y -> y * x) $ tbl) $ [n..m]
