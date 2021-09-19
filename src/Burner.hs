module Burner where

-- https://www.codewars.com/kata/5fde1ea66ba4060008ea5bd9/train/haskell

burner :: Int -> Int -> Int -> (Int, Int, Int)
burner c h o = water c h o
  where
    water :: Int -> Int -> Int -> (Int, Int, Int)
    water c h o
      | h < o * 2 = (h `div` 2, 0, 0) `add` co2 c (h `mod` 2) (o - h `div` 2)
      | otherwise = (o, 0, 0) `add` co2 c (h - o * 2) 0

    co2 :: Int -> Int -> Int -> (Int, Int, Int)
    co2 c h o
      | o < c * 2 = (0, o `div` 2, 0) `add` methane (c - o `div` 2) h (o `mod` 2)
      | otherwise = (0, c, 0) `add` methane 0 h (o - c * 2)
    
    methane :: Int -> Int -> Int -> (Int, Int, Int)
    methane c h o
      | h < c * 4 = (0, 0, h `div` 4)
      | otherwise = (0, 0, c)


add :: (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int)
add (c1, h1, o1) (c2,h2, o2) = (c1 + c2, h1 + h2, o1 + o2)
