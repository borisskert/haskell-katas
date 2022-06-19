module BaseConversion (convert, Alphabet (Alphabet, getDigits)) where

-- https://www.codewars.com/kata/526a569ca578d7e6e300034e/train/haskell

import Data.List (elemIndex)
import Data.Maybe (fromJust)

newtype Alphabet = Alphabet {getDigits :: [Char]} deriving (Show)

convert :: Alphabet -> Alphabet -> String -> String
convert a b = format b . value a

base :: Alphabet -> Int
base (Alphabet a) = length a

value :: Alphabet -> String -> Integer
value _ [] = 0
value alphabet@(Alphabet a) xs = index + value alphabet (init xs) * (toInteger . base $ alphabet)
  where
    x = last xs
    index = toInteger . fromJust . elemIndex x $ a

format :: Alphabet -> Integer -> String
format (Alphabet a) 0 = [head a]
format alphabet@(Alphabet a) x
  | divisor == 0 = [a !! index]
  | otherwise = format alphabet divisor ++ [a !! index]
  where
    (divisor, remainder) = x `divMod` (toInteger . base $ alphabet)
    index = fromInteger remainder :: Int

-- Again what learned
-- Use `Numeric` module:
-- showIntAtBase 2 intToDigit 123 "" -> "1111011"
-- and
-- `genericLength` from `Data.List` module:
-- >>> genericLength [1, 2, 3] :: Int
-- 3
-- >>> genericLength [1, 2, 3] :: Float
-- 3.0
-- to avoid convertion from Int
