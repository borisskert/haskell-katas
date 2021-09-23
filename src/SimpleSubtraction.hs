module SimpleSubtraction where 

-- https://www.codewars.com/kata/5b752a42b11814b09c00005d/train/haskell

solve :: Int -> Int -> [Int]
solve a 0 = [a, 0]
solve 0 b = [0, b]
solve a b
  | a >= 2 * b = solve (a - 2 * b) b
  | b >= 2 * a = solve a (b - 2 * a)
  | otherwise = [a, b]
