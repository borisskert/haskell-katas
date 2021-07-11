module Lightsabers where

--  https://www.codewars.com/kata/51f9d93b4095e0a7200001b8/train/haskell

howManyLightsabersDoYouOwn :: Num a => [Char] -> a
howManyLightsabersDoYouOwn name
  | name == "Zach" = 18
  | otherwise      = 0
