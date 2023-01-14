module SimpleDecrypt (decrypt) where

-- https://www.codewars.com/kata/58693136b98de0e4910001ab/train/haskell

import Data.Char (isLetter)
import Data.List (group, sort)
import Data.Maybe (fromMaybe)

decrypt :: String -> String
decrypt testKey = concatMap lookupCount ['a' .. 'z']
  where
    counts = map (\g -> (head g, length g)) . group . sort . filter isLetter $ testKey
    lookupCount c = show . fromMaybe 0 . lookup c $ counts
