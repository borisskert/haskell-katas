module MovieTitle where

-- https://www.codewars.com/kata/57a34e2b53ba33994d000668/train/haskell

import Data.Char (toLower, toUpper)

correctMovieTitle :: String -> String
correctMovieTitle = unwords . map capitalize . words
  where
    capitalize :: String -> String
    capitalize (x : xs) = toUpper x : map toLower xs
