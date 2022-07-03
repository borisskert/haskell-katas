module SpinningRings (spinningRings) where

--  https://www.codewars.com/kata/59afff65f1c8274f270020f5/train/haskell

spinningRings :: Int -> Int -> Int
spinningRings innerMax outerMax = count 1 . zip inner . tail $ outer
  where
    inner = cycle . reverse $ [0 .. innerMax]
    outer = cycle [0 .. outerMax]

    count :: Int -> [(Int, Int)] -> Int
    count n ((a, b) : others)
      | a == b = n
      | otherwise = count (n + 1) others
