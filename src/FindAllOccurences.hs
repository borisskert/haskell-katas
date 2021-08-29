module FindAllOccurences (findAll) where

-- https://www.codewars.com/kata/59a9919107157a45220000e1/train/haskell

--best practice:
-- import Data.List(findIndices)

-- findAll :: [Int] -> Int -> [Int]
-- findAll xs n = findIndices (== n) xs


findAll :: [Int] -> Int -> [Int]
findAll xs n = map toIndex . filter (\x -> n == toValue x) $ withIndices
  where
    withIndices = zip [0..] xs :: [(Int, Int)]
    
    toValue :: (Int, Int) -> Int
    toValue (_, value) = value

    toIndex :: (Int, Int) -> Int
    toIndex (index, _) = index
