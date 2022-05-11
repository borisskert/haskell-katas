module Codewars.G964.Thirteen where

--  https://www.codewars.com/kata/564057bc348c7200bd0000ff/train/haskell

thirt :: Integer -> Integer
thirt = go . go . go
  where
    go :: Integer -> Integer
    go = sum . map (\(p, d) -> d * p) . zip powers . reverse . toDigits
      where
        powers = map (\i -> modPow 10 i 13) [0 ..]

toDigits :: Integral a => a -> [a]
toDigits n
  | n < 10 = [n]
  | otherwise = toDigits m ++ [remainder]
  where
    (m, remainder) = n `divMod` 10

-- modular exponentiation by squaring
modPow :: Integral a => a -> a -> a -> a
modPow x y m = go 1 x y
  where
    go p x y
      | y > 0 && odd y = go ((p * x) `mod` m) x (y - 1)
      | y > 0 = go p ((x * x) `mod` m) (y `div` 2)
      | otherwise = p
