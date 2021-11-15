module TramCapacity where

-- https://www.codewars.com/kata/5b190aa7803388ec97000054/train/haskell

tram :: Int -> [Int] -> [Int] -> Int
tram stops descending onboarding =
  fst
    . foldl reduce (0, 0)
    . take stops
    . zip onboarding
    $ descending
  where
    reduce :: (Int, Int) -> (Int, Int) -> (Int, Int)
    reduce (max, current) (in', out')
      | newCurrent > max = (newCurrent, newCurrent)
      | otherwise = (max, newCurrent)
      where
        newCurrent = current + in' - out' :: Int
