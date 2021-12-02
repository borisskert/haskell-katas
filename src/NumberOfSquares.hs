module NumberOfSquares where

-- https://www.codewars.com/kata/57b71a89b69bfc92c7000170/train/haskell

getNumberOfSquares :: Int -> Int
getNumberOfSquares n =
  length
    . takeWhile (< n)
    . scanl (\sum x -> x ^ 2 + sum) 1
    $ [2 ..]
