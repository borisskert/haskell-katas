module Codewars.Exercise.Backronym where
import Codewars.Exercise.Backronym.Dictionary (dict)

-- https://www.codewars.com/kata/55805ab490c73741b7000064/train/haskell

import Data.Char (toLower)

makeBackronym :: String -> String
makeBackronym = unwords . map (toWord. toLower)


toWord :: Char -> String
toWord 'a' = "awesome"
toWord 'b' = "beautiful"
toWord 'c' = "confident"
toWord 'd' = "disturbing"
toWord 'e' = "eager"
toWord 'f' = "fantastic"
toWord 'g' = "gregarious"
toWord 'h' = "hippy"
toWord 'i' = "ingestable"
toWord 'j' = "joke"
toWord 'k' = "klingon"
toWord 'l' = "literal"
toWord 'm' = "mustache"
toWord 'n' = "newtonian"
toWord 'o' = "oscillating"
toWord 'p' = "perfect"
toWord 'q' = "queen"
toWord 'r' = "rant"
toWord 's' = "stylish"
toWord 't' = "turn"
toWord 'u' = "underlying"
toWord 'v' = "volcano"
toWord 'w' = "weird"
toWord 'x' = "xylophone"
toWord 'y' = "yogic"
toWord 'z' = "zero"
toWord c = dict c
