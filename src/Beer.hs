module Beer where

--  https://www.codewars.com/kata/51e04f6b544cf3f6550000c1/train/haskell

beeramid :: Double -> Double -> Int
beeramid bonus price = find 0 1
  where
    amount = floor . (/ price) $ bonus :: Int

    find :: Int -> Int -> Int
    find summarized x
      | nextSum > amount = x - 1
      | otherwise = find nextSum (x + 1)
      where
        nextSum = summarized + x * x
