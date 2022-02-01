{-# LANGUAGE TupleSections #-}

module ApproxRoot where

-- https://www.codewars.com/kata/58475cce273e5560f40000fa/train/haskell

approxRoot :: Int -> Double
approxRoot x
  | greaterRoot == lowerRoot = fromIntegral greaterRoot
  | otherwise = (+ fromIntegral differenceLower / fromIntegral difference) . fromIntegral $ lowerRoot
  where
    (lowerRoot, greaterRoot) = sqrtRange x
    greaterSquare = greaterRoot * greaterRoot
    lowerSquare = lowerRoot * lowerRoot
    difference = greaterSquare - lowerSquare
    differenceLower = x - lowerSquare

sqrtRange :: Int -> (Int, Int)
sqrtRange x
  | perfect * perfect == x = (perfect, perfect)
  | otherwise = (floor root, ceiling root)
  where
    root = sqrt . fromIntegral $ x :: Double
    perfect = round root :: Int
