module Flush where

-- https://www.codewars.com/kata/5acbc3b3481ebb23a400007d/train/haskell

import Data.List (nub)


isFlush :: [String] -> Bool
isFlush = (== 1) . length . nub . map last
