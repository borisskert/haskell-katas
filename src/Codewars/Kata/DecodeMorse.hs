module Codewars.Kata.DecodeMorse (decodeMorse) where

-- https://www.codewars.com/kata/54b724efac3d5402db00065e/train/haskell

import Codewars.Kata.DecodeMorse.Preload (morseCodes)
import Data.List.Split (splitOn)
import Data.Map (lookup)
import Data.Maybe (fromMaybe)
import Prelude hiding (lookup)

decodeMorse :: String -> String
decodeMorse = unwords . filter (not . null) . map decodeWord . splitOn "   "

decodeWord :: String -> String
decodeWord = concatMap (fromMaybe "" . (`lookup` morseCodes)) . words

-- ~Again what learned~
-- Use `!` from Data.Map.Strict module:
-- import Data.Map.Strict ((!))
-- value = morseCodes ! key
