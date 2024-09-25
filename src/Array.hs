module Array (upArray) where

-- https://www.codewars.com/kata/5514e5b77e6b2f38e0000ca9/train/haskell

upArray :: [Int] -> Maybe [Int]
upArray [] = Nothing
upArray xs = go xs 1

go :: [Int] -> Int -> Maybe [Int]
go [] 0 = Just []
go [] carry = Just [carry]
go xs carry
  | x < 0 || x > 9 = Nothing
  | otherwise = go rest newCarry >>= \rest -> Just $ rest ++ [newDigit]
  where
    x = last xs
    rest = init xs
    (newCarry, newDigit) = (x + carry) `divMod` 10
