module ArraySquareUp (squareUp) where

-- https://www.codewars.com/kata/5a8bcd980025e99381000099/train/haskell

squareUp :: Int -> [Int]
squareUp n = concatMap (pattern' n) $ [1 .. n]

pattern' :: Int -> Int -> [Int]
pattern' size n
  | n == 1 = padding ++ [1]
  | otherwise = padding ++ [n, n - 1 .. 1]
  where
    padding = replicate (size - n) 0
