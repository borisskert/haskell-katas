module GetSum where

--  https://www.codewars.com/kata/55f2b110f61eb01779000053/train/haskell

getSum :: Int -> Int -> Int
getSum a b
  | a == b = a
  | a == (-b) = 0
  | abs b > abs a = getSum b a
  | a >= 0 && b >= 0 = getSumAbs a b
  | a < 0 && b < 0 = negate $ getSumAbs (abs a) (abs b)
  | a > 0 = (getSumAbs (abs a) 0) - (getSumAbs (abs b) 0)
  | otherwise = negate $ (getSumAbs (abs a) 0) - (getSumAbs (abs b) 0)


getSumAbs a b
  | b == 0 = gauss a
  | a == 0 = gauss b
  | a > b = (gauss a) - (gauss (b - 1))
  | a < b = getSumAbs b a
  | otherwise = error "Invalid input"


gauss :: Int -> Int
gauss 0 = 0
gauss n
  | n > 0 = (n * (n + 1)) `div` 2
  | otherwise = negate (gauss $ abs n)
