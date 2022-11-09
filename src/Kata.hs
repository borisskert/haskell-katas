module Kata (reduceByRules) where

--  https://www.codewars.com/kata/585ba6dff59b3cef3f000132/train/haskell

reduceByRules :: [Double] -> [Double -> Double -> Double] -> Double
reduceByRules [x] _ = x
reduceByRules (x1 : x2 : xs) (f : fs) = reduceByRules xs' fs'
  where
    xs' = x1 `f` x2 : xs
    fs' = fs ++ [f]
