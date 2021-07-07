module Century where

-- https://www.codewars.com/kata/5a3fe3dde1ce0e8ed6000097/train/haskell

century :: Int -> Int
century year = (year - 1) `div` 100 + 1
