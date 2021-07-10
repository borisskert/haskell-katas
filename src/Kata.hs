module Kata (mouthSize) where

--  https://www.codewars.com/kata/57ec8bd8f670e9a47a000f89/train/haskell

import Data.Char (toLower)

mouthSize :: String -> String
mouthSize animal
  | map toLower animal == "alligator" = "small"
  | otherwise                         = "wide"
