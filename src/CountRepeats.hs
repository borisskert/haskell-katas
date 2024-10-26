module CountRepeats where

-- https://www.codewars.com/kata/598ee7b6ec6cb90dd6000061/train/haskell

import Data.List (group)

countRepeats :: String -> Int
countRepeats = sum . map (pred . length) . group
