module Pandemia (infected) where

-- https://www.codewars.com/kata/5e2596a9ad937f002e510435/train/haskell

infected :: String -> Double
infected = (* 100) . rate . spread


rate :: String -> Double
rate map
  | infected == 0.0 = 0.0
  | otherwise = infected / (infected + uninfected)
  where
    infected = fromIntegral . length . filter (== '1') $ map
    uninfected = fromIntegral . length . filter (== '0') $ map


spread :: String -> String
spread map
  | spreadMap == map = map
  | otherwise = spread spreadMap
  where
    spreadOnce :: String -> String
    spreadOnce [] = []
    spreadOnce [x] = [x]
    spreadOnce (x1:x2:others)
      | x1 == '0' && x2 == '1' = '1' : spreadOnce (x2:others)
      | x1 == '1' && x2 == '0' = '1' : spreadOnce ('1':others)
      | otherwise = x1 : spreadOnce (x2:others)

    spreadMap = spreadOnce map
