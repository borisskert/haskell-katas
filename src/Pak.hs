module Pak where

-- https://www.codewars.com/kata/57e92812750fcc051800004d/train/haskell

import Data.List (intercalate)

pak :: String -> String
pak = intercalate " pak " . words
