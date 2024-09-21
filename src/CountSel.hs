module CountSel where

-- https://www.codewars.com/kata/55f95dbb350b7b1239000030/train/haskell

import Data.List (nub, sort)

countSel :: [Int] -> (Int, Int, Int, ([Int], Int))
countSel xs = (length xs, length values, singles, (maxOccurenceValues, maxOccurence))
  where
    values = nub xs
    counted = map (\x -> (x, length . filter (== x) $ xs)) values
    singles = length . filter ((== 1) . snd) $ counted
    maxOccurence = maximum . map snd $ counted
    maxOccurenceValues = sort . map fst . filter ((== maxOccurence) . snd) $ counted
