module Vaporcode where

-- https://www.codewars.com/kata/5966eeb31b229e44eb00007a/train/haskell

import Data.Char (isLower, toUpper)


vaporcode :: String -> String
vaporcode = concat . unwordsWith "  " . map toVaporChar . concat . words


toVaporChar :: Char -> [Char] 
toVaporChar c
  | isLower c = [toUpper c]
  | otherwise = [c]


unwordsWith :: a -> [a] -> [a]
unwordsWith _ [] = []
unwordsWith _ [x] = [x]
unwordsWith separator list = head list : separator : unwordsWith separator (tail list)
