module RomanNumerals where

-- https://www.codewars.com/kata/51b62bf6a9c58071c600001b/train/haskell

solution :: Integer -> String
solution x
  | not . null $ base = snd . head $ base
  | otherwise = snd nextBase ++ solution (x - fst nextBase)
  where
    base = filter ((== x) . fst) bases
    nextBase = head . dropWhile ((> x) . fst) . reverse $ bases

bases =
  [ (1, "I"),
    (1, "I"),
    (4, "IV"),
    (5, "V"),
    (9, "IX"),
    (10, "X"),
    (40, "XL"),
    (50, "L"),
    (90, "XC"),
    (100, "C"),
    (400, "CD"),
    (500, "D"),
    (900, "CM"),
    (1000, "M")
  ]
