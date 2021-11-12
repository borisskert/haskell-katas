module SimpleStringDivII where

-- https://www.codewars.com/kata/5b8be3ae36332f341e00015e/train/haskell

solve :: String -> Int -> Int
solve xs k =
  length
    . filter (\x -> x `mod` k == 0)
    . map read
    $ [snd x ++ snd y | x <- numbers, y <- numbers, fst x /= fst y]
  where
    numbers = zip [0 ..] . words $ xs :: [(Int, String)]
