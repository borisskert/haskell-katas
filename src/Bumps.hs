module Bumps where

-- https://www.codewars.com/kata/57ed30dde7728215300005fa/train/haskell

import Data.Bool (bool)


bump :: String -> String
bump = bool "Car Dead" "Woohoo!". (>=) 15 . length . filter (== 'n')
