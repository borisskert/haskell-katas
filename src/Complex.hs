module Complex where

-- https://www.codewars.com/kata/59e5fe367905df7f5c000072/train/haskell

data Complex = Complex Double Double
  deriving (Eq, Show)

real, imaginary :: Complex -> Double
real (Complex x _) = x
imaginary (Complex _ y) = y

instance Num Complex where
  (+) = add
  (*) = mult
  (-) = subtract'
  negate = negate'
  abs = abs'
  signum = undefined
  fromInteger = fromInteger'

add :: Complex -> Complex -> Complex
add (Complex x y) (Complex u v) = Complex (x + u) (y + v)

subtract' :: Complex -> Complex -> Complex
subtract' (Complex x y) (Complex u v) = Complex (x - u) (y - v)

mult :: Complex -> Complex -> Complex
mult (Complex x y) (Complex u v) = Complex (x * u - y * v) (x * v + y * u)

negate' :: Complex -> Complex
negate' (Complex x y) = Complex (- x) (- y)

abs' :: Complex -> Complex
abs' (Complex x y) = Complex (abs x) (abs y)

fromInteger' :: Integer -> Complex
fromInteger' x = Complex (fromIntegral x) 0
