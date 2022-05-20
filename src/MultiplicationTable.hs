module MultiplicationTable where

--  https://www.codewars.com/kata/534d2f5b5371ecf8d2000a08/train/haskell

multiplicationTable :: Int -> [[Int]]
multiplicationTable 0 = []
multiplicationTable n = map multiplicationRow [n, (n * 2) .. (n * n)]
  where
    multiplicationRow x = [factor, (factor * 2) .. x]
      where
        factor = x `div` n
