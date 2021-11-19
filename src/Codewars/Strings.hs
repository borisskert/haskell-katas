module Codewars.Strings where

-- https://www.codewars.com/kata/56a24b4d9f3671584d000039/train/haskell

import Data.List (group)
import Data.Char (toLower)

doubleCheck :: [Char] -> Bool
doubleCheck = any ((> 1) . length) . group . map toLower
