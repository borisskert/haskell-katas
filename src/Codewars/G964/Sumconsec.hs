module Codewars.G964.Sumconsec where

--  https://www.codewars.com/kata/55eeddff3f64c954c2000059/train/haskell

import Data.List (group)

sumConsecutives :: [Int] -> [Int]
sumConsecutives = map sum . group
