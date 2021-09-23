module SimpleLetterRemoval where 

-- https://www.codewars.com/kata/5b728f801db5cec7320000c7/train/haskell

import Data.List (sortBy)


solve :: [Char] -> Int -> [Char]
solve xs k = map snd . sortBy compareIndex . drop k . sortBy compareLetter . zip [0..] $ xs
  where
    compareLetter :: (Int, Char) -> (Int, Char) -> Ordering
    compareLetter (indexA, charA) (indexB, charB)
      | charA == charB = compare indexA indexB
      | otherwise = compare charA charB
    
    compareIndex :: (Int, Char) -> (Int, Char) -> Ordering
    compareIndex (indexA, charA) (indexB, charB) = compare indexA indexB


--better:
-- import Data.List

-- solve :: [Char] -> Int -> [Char]
-- solve xs k = map fst . sortOn snd . drop k . sort $ zip xs [0..]
