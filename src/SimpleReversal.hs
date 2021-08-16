module SimpleReversal where 

-- https://www.codewars.com/kata/5a71939d373c2e634200008e/train/haskell

solve :: String -> String
solve [] = []
solve [c] = [c]
solve xs
  | head xs == ' ' = ' ' : solve (tail xs)
  | last xs == ' ' = solve (init xs) ++ [' ']
  | otherwise = [last xs] ++ solve (init $ tail xs) ++ [head xs]
