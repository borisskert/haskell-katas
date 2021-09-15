module OddOnesOut (oddOnesOut) where

-- https://www.codewars.com/kata/5d376cdc9bcee7001fcb84c0/train/haskell

oddOnesOut :: (Ord a) => [a] -> [a]
oddOnesOut xs = map fst . filter (even . snd) $ withCount
  where
    withCount = map (\x -> (x, length . filter (== x) $ xs)) xs
