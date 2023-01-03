module NumberOfDivisors (oddity) where

-- https://www.codewars.com/kata/55830eec3e6b6c44ff000040/train/haskell

oddity :: Integer -> String
oddity n
  | squareRoot * squareRoot == n = "odd"
  | otherwise = "even"
  where
    squareRoot = integerRoot 2 n

integerRoot :: Integer -> Integer -> Integer
integerRoot n base
  | d < e = d
  | otherwise = e
  where
    n1 = n - 1
    (d, e) = search 1 ((n1 + base) `div` n)

    search :: Integer -> Integer -> (Integer, Integer)
    search c d
      | c /= d && c /= e = search d e
      | otherwise = (d, e)
      where
        e = (n1 * d + (base `div` d ^ n1)) `div` n
