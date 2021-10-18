module Queue where

-- https://www.codewars.com/kata/5b538734beb8654d6b00016d/train/haskell

queue :: [Int] -> Int -> Int
queue list index =
  length greaterBefore * value
    + length greaterAfter * (value - 1)
    + (sum . map snd $ lower)
    + value
  where
    value = list !! index
    withIndices = zip [0 ..] list :: [(Int, Int)]

    greaterBefore = filter ((>= value) . snd) . filter ((< index) . fst) $ withIndices
    greaterAfter = filter ((>= value) . snd) . filter ((> index) . fst) $ withIndices
    lower = filter ((< value) . snd) withIndices
