module Crossing where

-- https://www.codewars.com/kata/5889ab4928c08c08da00009b/train/haskell

crossingSum :: [[Int]] -> Int -> Int -> Int
crossingSum matrix a b =
  sum
    . map fst
    . filter (\(_, (x, y)) -> x == a || y == b)
    $ coords
  where
    coords =
      concatMap
        ( (\(x, ys) -> map (\(y, z) -> (z, (x, y))) ys)
            . (\(x, m) -> (x, zip [0 ..] m))
        )
        . zip [0 ..]
        $ matrix ::
        [(Int, (Int, Int))]
