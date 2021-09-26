module StringDoubles where 

-- https://www.codewars.com/kata/5a145ab08ba9148dd6000094/train/haskell

solve :: String -> String
solve [] = []
solve [x] = [x]
solve xs
  | xs == removedDoubles = xs
  | otherwise = solve removedDoubles
  where
    removedDoubles = removeDoubles xs


removeDoubles :: String -> String
removeDoubles [] = []
removeDoubles [x] = [x]
removeDoubles (x1:x2:others)
  | x1 == x2 = removeDoubles others
  | otherwise = x1 : removeDoubles (x2:others)
