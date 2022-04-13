module Codewars.G964.FindEven where

-- https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/haskell

findEvenIndex :: [Int] -> Int
findEvenIndex arr
  | null equalSplitsByIndex = -1
  | otherwise = length . fst . head $ equalSplitsByIndex
  where
    withIndices = zip [0 ..] arr

    splitByIndex :: Int -> ([Int], [Int])
    splitByIndex index = (left, right)
      where
        left = map snd . filter ((< index) . fst) $ withIndices
        right = map snd . filter ((> index) . fst) $ withIndices

    equalSplitsByIndex = filter (\(a, b) -> sum a == sum b) . map splitByIndex $ [0 .. (length arr)]
