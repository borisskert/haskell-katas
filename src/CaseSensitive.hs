module CaseSensitive where

-- https://www.codewars.com/kata/5a805631ba1bb55b0c0000b8/train/haskell

import Data.Char (isUpper)

caseSensitive :: String -> (Bool, String)
caseSensitive xs = (null uppers, uppers)
  where
    uppers = filter isUpper xs :: [Char]
