module LengthLexicographic where

-- https://www.codewars.com/kata/542712c3a16825621e000b65/train/haskell

newtype LengthList a = LengthList [a]
  deriving (Show, Eq)

instance Ord a => Ord (LengthList a) where
  compare (LengthList x) (LengthList y)
    | length x > length y = GT
    | length x < length y = LT
    | otherwise = compare' x y

compare' :: Ord a => [a] -> [a] -> Ordering
compare' [x] [y] = compare x y
compare' (x : xs) (y : ys)
  | ordering == EQ = compare' xs ys
  | otherwise = ordering
  where
    ordering = compare x y
