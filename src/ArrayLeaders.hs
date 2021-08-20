module ArrayLeaders where

-- https://www.codewars.com/kata/5a651865fd56cb55760000e0/train/haskell

--best practise:
-- arrayLeaders :: [Integer] -> [Integer]
-- arrayLeaders []  = []
-- arrayLeaders (n:ns)
--   | n > sum ns   = n : arrayLeaders ns
--   | otherwise    = arrayLeaders ns

arrayLeaders :: [Integer] -> [Integer]
arrayLeaders xs = getLeaders [] (last xs) (init xs)
  where
    getLeaders :: [Integer] -> Integer -> [Integer] -> [Integer]
    getLeaders [] leader xs
      | leader > 0 = getLeaders [leader] (last xs) (init xs) ++ [leader]
      | otherwise = getLeaders [leader] (last xs) (init xs)
    getLeaders right leader []
      | leader > sum right = [leader]
      | otherwise = []
    getLeaders right leader xs
      | leader > sum right = getLeaders (right ++ [leader]) (last xs) (init xs) ++ [leader]
      | otherwise = getLeaders (right ++ [leader]) (last xs) (init xs)
