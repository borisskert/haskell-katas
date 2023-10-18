module Codewars.Kata.GlassDoor (stepThroughWith) where

-- https://www.codewars.com/kata/5642bf07a586135a6f000004/train/haskell

import Data.List (group)

stepThroughWith :: String -> Bool
stepThroughWith = any ((> 1) . length) . group
