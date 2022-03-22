module MakeAllNumbersNegative where

-- https://www.codewars.com/kata/57a20510cf1fa5bfc400095f/train/haskell

makeNegative :: [Int] -> [Int]
makeNegative = map negate'
  where
    negate' x
      | x < 0 = x
      | otherwise = negate x
