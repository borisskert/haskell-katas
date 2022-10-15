module MinimumPerimeter (minimumPerimeter) where

--  https://www.codewars.com/kata/5826f54cc60c7e5266000baf/train/haskell

minimumPerimeter :: Integer -> Integer
minimumPerimeter = minimum . map (\(a, b) -> 2 * (a + b)) . factors

factors :: Integer -> [(Integer, Integer)]
factors n = map (\x -> (n `div` x, x)) . filter (\x -> n `mod` x == 0) $ [root, (root - 1) .. 1]
  where
    root = integerRoot 2 n :: Integer

integerRoot :: Integer -> Integer -> Integer
integerRoot n base
  | d < e = d
  | otherwise = e
  where
    n1 = n - 1
    (d, e) = search 1 ((n1 + base) `div` n)

    search :: Integer -> Integer -> (Integer, Integer)
    search c d'
      | c /= d' && c /= e' = search d' e'
      | otherwise = (d', e')
      where
        e' = (n1 * d' + (base `div` d' ^ n1)) `div` n
