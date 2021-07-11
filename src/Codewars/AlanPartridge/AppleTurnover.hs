module Codewars.AlanPartridge.AppleTurnover where

--  https://www.codewars.com/kata/580a094553bd9ec5d800007d/train/haskell

apple :: Either String Int -> String
apple (Right a) = sayIt a
apple (Left b) = sayIt a
  where a = read b


sayIt :: Int -> String
sayIt a
  | a * a > 1000 = "It's hotter than the sun!!"
  | otherwise    = "Help yourself to a honeycomb Yorkie for the glovebox."
