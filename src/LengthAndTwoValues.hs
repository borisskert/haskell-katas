module LengthAndTwoValues (alternate) where

--  https://www.codewars.com/kata/62a611067274990047f431a8/train/haskell

alternate :: Int -> a -> a -> [a]
alternate n x y = take n . cycle $ [x, y]
