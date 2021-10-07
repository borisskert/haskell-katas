module StatusArrays (status) where
import Data.List (sortBy)

-- https://www.codewars.com/kata/601c18c1d92283000ec86f2b/train/haskell

status :: [Int] -> [Int]
status nums = map snd . sortBy compareStatus . map (\x -> (toStatus x, snd x)) $ withIndices
  where
    withIndices = zip [0..] nums :: [(Int, Int)]

    smaller :: Int -> Int
    smaller x = length . filter (< x) $ nums

    toStatus :: (Int, Int) -> Int
    toStatus (index, value) = index + smaller value

    compareStatus (status1, _) (status2, _) = compare status1 status2
