module TheShellGame where

--  https://www.codewars.com/kata/546a3fea8a3502302a000cd2/train/haskell

findTheBall :: Int -> [(Int, Int)] -> Int
findTheBall n [] = n
findTheBall n ((a, b) : rest)
  | n == a = findTheBall b rest
  | n == b = findTheBall a rest
  | otherwise = findTheBall n rest
