module Codewars.Kata.GCContent where

import Codewars.Kata.GCContent.Types

-- https://www.codewars.com/kata/5747a9bbe2fab9a0c400012f/train/haskell

gcContent :: [Base] -> Double
gcContent xs
  | total == 0.0 = 0.0
  | otherwise = (* 100.0) . (/ total) $ gcCount
  where
    total = fromIntegral . length $ xs :: Double
    gcCount = fromIntegral . length . filter isGC $ xs

    isGC :: Base -> Bool
    isGC G = True
    isGC C = True
    isGC _ = False
