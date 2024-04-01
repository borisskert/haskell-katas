module MultNumAsStrings where

-- https://www.codewars.com/kata/55911ef14065454c75000062/train/haskell

multiply :: String -> String -> String
multiply xs ys = show (x * y)
  where
    x = read xs :: Integer
    y = read ys :: Integer
