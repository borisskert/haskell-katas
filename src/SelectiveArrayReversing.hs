module SelectiveArrayReversing (selReverse) where
import Data.List.Split (chunksOf)

-- https://www.codewars.com/kata/58f6000bc0ec6451960000fd/train/haskell

selReverse :: Int -> [a] -> [a] -- note argument order
-- selReverse l xs = map (\x -> xs !! x) . take (length xs) $ indices l
selReverse l xs = concatMap reversed . chunksOf l $ xs

indices :: Int -> [Int]
indices n = (map go) $ [0..]
  where
    go :: Int -> Int
    go i = (d + 1) * n - r
      where
        d = i `div` n
        r = i `mod` n + 1

-- bei 3:
-- 0 -> 2 = 3 - 1 = (0 + 1) * 3 - 1
-- 1 -> 1 = 3 - 2 = (0 + 1) * 3 - 2
-- 2 -> 0 = 3 - 3 = (0 + 1) * 3 - 3
-- 3 -> 5 = 6 - 1 = (1 + 1) * 3 - 1
-- 4 -> 4 = 6 - 2 = (1 + 1) * 3 - 2
-- 5 -> 3 = 6 - 3 = (1 + 1) * 3 - 3
-- 6 -> 8 = 9 - 1 = (2 + 1) * 3 - 1
-- 7 -> 7 = 9 - 2 = (2 + 1) * 3 - 2
-- 8 -> 6 = 9 - 3 = (2 + 1) * 3 - 3

reversed :: [a] -> [a]
reversed xs = map (\x -> xs !! x) $ indices (length xs)
