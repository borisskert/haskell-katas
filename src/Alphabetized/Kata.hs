module Alphabetized.Kata (alphabetized) where

--  https://www.codewars.com/kata/5970df092ef474680a0000c9/train/haskell

import Data.Char (isLetter, toLower)
import Data.List (sortOn)

alphabetized :: String -> String
alphabetized = sortOn toLower . filter isLetter
