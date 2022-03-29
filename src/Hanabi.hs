module Hanabi where

-- https://www.codewars.com/kata/5dcae2ed8a71fb000f7d2b74/train/haskell

import Data.List (nub)
import Preloaded (Suit (..))

ways :: [(Int, Suit)] -> Int
ways xs = suits + numbers
  where
    numbers = length . nub . map fst $ xs :: Int
    suits = length . nub . map snd $ xs :: Int
