module Kata (explode) where

-- https://www.codewars.com/kata/585b1fafe08bae9988000314/train/haskell

import Data.Char (digitToInt)


explode :: String -> String
explode = concatMap toExplosion . toDigits
  where
    toDigits :: String -> [Int]
    toDigits = map digitToInt

    toExplosion :: Int -> String
    toExplosion x = concat . replicate x . show $ x
