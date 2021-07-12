module CoefficientsOfTheQuadraticEquation (quadratic) where

--  https://www.codewars.com/kata/5d59576768ba810001f1f8d6/train/haskell

quadratic :: Int -> Int -> (Int,Int,Int)
quadratic x1 x2 = (1, (-x1) - x2, x1 * x2)
