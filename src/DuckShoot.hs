module DuckShoot where

-- https://www.codewars.com/kata/57d27a0a26427672b900046f/train/haskell

duckShoot :: Int -> Float -> String -> String
duckShoot ammo aim = replace shots '2' 'X'
  where
    shots = floor . (* aim) . fromIntegral $ ammo

replace :: (Eq a) => Int -> a -> a -> [a] -> [a]
replace 0 _ _ list = list
replace _ _ _ [] = []
replace count replaced replacement list
  | head list == replaced = replacement : replace (count - 1) replaced replacement (tail list)
  | otherwise = head list : replace count replaced replacement (tail list)
