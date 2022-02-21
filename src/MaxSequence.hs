module MaxSequence where

-- https://www.codewars.com/kata/54521e9ec8e60bc4de000d6c/train/haskell

maxSequence :: [Int] -> Int
maxSequence = snd . foldl search (0, 0)
  where
    search :: (Int, Int) -> Int -> (Int, Int)
    search (current, record) x
      | current + x < 0 = (0, record)
      | current + x > record = (current + x, current + x)
      | otherwise = (current + x, record)
