module PeakArrayIndex where 

-- https://www.codewars.com/kata/5a61a846cadebf9738000076/train/haskell

peak :: [Int] -> Maybe Int
peak xs = findPeak [head withIndices] (head (tail withIndices)) (tail (tail withIndices))
  where
    withIndices = zip [0..] xs :: [(Int, Int)]

    findPeak :: [(Int, Int)] -> (Int, Int) -> [(Int, Int)] -> Maybe Int
    findPeak _ _ [] = Nothing
    findPeak rise peak fall
      | sumRise == sumFall = Just (fst peak)
      | otherwise = findPeak (rise ++ [peak]) (head fall) (tail fall)
      where
        sumRise = sum . map snd $ rise
        sumFall = sum . map snd $ fall
