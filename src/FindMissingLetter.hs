module FindMissingLetter where

-- https://www.codewars.com/kata/5839edaa6754d6fec10000a2/train/haskell

import Data.Char (isLower)

findMissingLetter :: [Char] -> Char
findMissingLetter letters =
  fst
    . head
    . filter (uncurry (/=))
    . zip [(head letters) .. (last letters)]
    $ letters
