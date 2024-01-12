module IfYouCan.TBeat.EmJoin.Em (cantBeatSoJoin) where

-- https://www.codewars.com/kata/5d37899a3b34c6002df273ee/train/haskell

import Data.List (sortOn)
import Data.Ord (Down (..))

cantBeatSoJoin :: [[Int]] -> [Int]
cantBeatSoJoin = concat . sortOn (Down . sum)
