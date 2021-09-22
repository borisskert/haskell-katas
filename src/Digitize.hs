module Digitize where

-- https://www.codewars.com/kata/5417423f9e2e6c2f040002ae/train/haskell

import Data.Char (digitToInt)

digitize :: Integer -> [Integer]
digitize = map (toInteger . digitToInt) . show
