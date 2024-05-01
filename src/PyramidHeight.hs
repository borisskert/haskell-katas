module PyramidHeight (pyramidHeight) where

-- https://www.codewars.com/kata/56968ce7753513604b000055/train/haskell

pyramidHeight :: Int -> Int
pyramidHeight x =
  length
    . takeWhile (<= x)
    . tail
    . scanl (\sum x -> sum + x * x) 0
    $ [1 ..]
