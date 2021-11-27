module FindAB where

-- https://www.codewars.com/kata/5714803d2817ffce17000a35/train/haskell

findAB :: [Int] -> Int -> Maybe (Int, Int)
findAB xs i
  | null pairs = Nothing
  | otherwise = Just . head $ pairs
  where
    pairs =
      filter (\(x, y) -> x * y == i)
        . (\xs -> [(snd x, snd y) | x <- xs, y <- xs, fst x /= fst y])
        . zip [0 ..]
        $ xs
