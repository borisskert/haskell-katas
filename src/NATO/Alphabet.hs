module NATO.Alphabet where

-- https://www.codewars.com/kata/54530f75699b53e558002076/train/haskell

import Data.Char (toUpper)

nato :: String -> String
nato = unwords . map (toNato . toUpper)

-- use `lookup` function
toNato :: Char -> String
toNato key = snd . head . filter ((== key) . fst) $ letters

letters :: [(Char, String)]
letters =
  [ ('A', "Alpha"),
    ('B', "Bravo"),
    ('C', "Charlie"),
    ('D', "Delta"),
    ('E', "Echo"),
    ('F', "Foxtrot"),
    ('G', "Golf"),
    ('H', "Hotel"),
    ('I', "India"),
    ('J', "Juliett"),
    ('K', "Kilo"),
    ('L', "Lima"),
    ('M', "Mike"),
    ('N', "November"),
    ('O', "Oscar"),
    ('P', "Papa"),
    ('Q', "Quebec"),
    ('R', "Romeo"),
    ('S', "Sierra"),
    ('T', "Tango"),
    ('U', "Uniform"),
    ('V', "Victor"),
    ('W', "Whiskey"),
    ('X', "X-ray"),
    ('Y', "Yankee"),
    ('Z', "Zulu")
  ]
