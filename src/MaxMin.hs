module MaxMin where 

-- https://www.codewars.com/kata/5a090c4e697598d0b9000004/train/haskell

import Data.List (sort)

--best practice:
-- solve :: [Int] -> [Int] 
-- solve xs = take (length xs) $ concat $ zipWith (\x y -> [x, y]) desc asc
--   where asc = sort xs
--         desc = reverse asc

solve :: [Int] -> [Int] 
solve xs = minMax down up
  where
    minMax :: [Int] -> [Int] -> [Int]
    minMax [] [] = []
    minMax down up
      | headDown > headUp = [headDown, headUp] ++ minMax (tail down) (tail up)
      | headDown == headUp = [headDown]
      | otherwise = []
      where
        headDown = head down
        headUp = head up

    up = sort xs
    down = reverse up
