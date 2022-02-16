module InfinitelyNestedRadicalExpressions.Kata (fn) where

-- https://www.codewars.com/kata/5af2b240d2ee2764420000a2/train/haskell

fn :: Double -> Double
fn x = 0.5 + sqrt (0.25 + x)
