module BaumSweet (baumSweet) where

import Data.Maybe (fromJust, isJust)

-- https://www.codewars.com/kata/5d2659626c7aec0022cb8006/train/haskell

baumSweet :: [Int]
baumSweet = map b [0 ..]
  where
    b :: Int -> Int
    b 0 = 1
    b n
      | isJust m && (even . fromJust $m) = 0
      | isJust m && (odd . fromJust $m) = b ((fromJust m - 1) `div` 2)
      | even n = 0
      | otherwise = b (n `div` 2)
      where
        m = getM n :: Maybe Int

        getM :: Int -> Maybe Int
        getM n
          | n < 4 = Nothing
          | isDiv4 = Just (or div4 (getM div4))
          | otherwise = Nothing
          where
            nDivmod4 = divMod n 4 :: (Int, Int)
            isDiv4 = (== 0) . snd $ nDivmod4 :: Bool
            div4 = fst nDivmod4 :: Int

            or :: Int -> Maybe Int -> Int
            or d Nothing = d
            or _ (Just x) = x
