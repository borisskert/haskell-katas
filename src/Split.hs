module Split (splitInteger) where

-- https://www.codewars.com/kata/529e2e1f16cb0fcccb000a6b/train/haskell

splitInteger :: Int -> Int -> [Int]
splitInteger m n = start ++ end
  where
    (quotient, remainder) = m `divMod` n
    start = replicate (n - remainder) quotient
    end = replicate remainder (quotient + 1)
