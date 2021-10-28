module SwapHeadTail where

-- https://www.codewars.com/kata/5a34f087c5e28462d9000082/train/haskell

swapHeadAndTail :: [Int] -> [Int]
swapHeadAndTail xs
  | even size = suffix half xs ++ prefix half xs
  | otherwise = suffix half xs ++ (xs !! half : prefix half xs)
  where
    size = length xs :: Int
    half = length xs `div` 2 :: Int

sublist :: Int -> Int -> [a] -> [a]
sublist begin end = map snd . filter ((\x -> x >= begin && x < end) . fst) . zip [0 ..]

prefix :: Int -> [a] -> [a]
prefix = sublist 0

suffix :: Int -> [a] -> [a]
suffix count xs = sublist (length xs - count) (length xs) xs
