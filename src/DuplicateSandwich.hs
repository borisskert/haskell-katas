module DuplicateSandwich (duplicateSandwich) where

-- https://www.codewars.com/kata/5f8a15c06dbd530016be0c19/train/haskell

duplicateSandwich :: (Eq a) => [a] -> [a]
duplicateSandwich = map snd . takeWhile ((== 1) . fst) . drop 1 . dropWhile ((== 1) . fst) . withCount


withCount :: (Eq a) => [a] -> [(Int, a)]
withCount xs =  map (\x -> (length . filter (== x) $ xs, x)) xs
