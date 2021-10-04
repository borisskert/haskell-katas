module StringPrefixAndSuffix where

-- https://www.codewars.com/kata/5ce969ab07d4b7002dcaa7a1/train/haskell

solve :: String -> Int
solve [c] = 0
solve cs = searchSuffix . (`div` 2) . length $ cs
  where
    searchSuffix :: Int -> Int
    searchSuffix 0 = 0
    searchSuffix count
        | prefix count cs == suffix count cs = count
        | otherwise = searchSuffix (count - 1)


sublist :: Int -> Int -> [a] -> [a]
sublist begin end = map snd . filter ((\x -> x >= begin && x < end) . fst) . zip [0..]


prefix :: Int -> [a] -> [a]
prefix = sublist 0


suffix :: Int -> [a] -> [a]
suffix count xs = sublist (length xs - count) (length xs) xs
