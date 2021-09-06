module GCDSum where 

-- https://www.codewars.com/kata/5dd259444228280032b1ed2a/train/haskell

solve :: Int -> Int -> Maybe (Int,Int) 
solve s g
  | s `mod` g /= 0 = Nothing
  | otherwise = Just (g, diff)
  where
    diff = s - g :: Int
