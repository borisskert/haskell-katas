module Maskify where

--  https://www.codewars.com/kata/5412509bd436bd33920011bc/train/haskell

maskify :: String -> String
maskify str
  | size < 5 = str
  | otherwise = take (size - 4) (repeat '#') ++ lastFour str
  where
    size = length str


lastFour :: String -> String
lastFour str = reverse $ take 4 $ reverse str
