module SF1 where

-- https://www.codewars.com/kata/588856a82ffea640c80000cc/train/haskell

arrayPreviousLess :: [Int] -> [Int]
arrayPreviousLess xs = map toValue wIndices
  where
    wIndices = zip [0 ..] xs :: [(Int, Int)]

    toValue :: (Int, Int) -> Int
    toValue (pos, x)
      | null smaller = -1
      | otherwise = snd . head $ smaller
      where
        smaller = filter (\(index, y) -> index < pos && y < x) . reverse $ wIndices :: [(Int, Int)]
