module Kata.Deadfish (parse) where

--  https://www.codewars.com/kata/51e0007c1f9378fa810002a9/train/haskell

parse :: String -> [Int]
parse = snd . foldl instruction (0, [])
  where
    instruction :: (Int, [Int]) -> Char -> (Int, [Int])
    instruction (v, output) 'i' = (v + 1, output)
    instruction (v, output) 'd' = (v - 1, output)
    instruction (v, output) 's' = (v * v, output)
    instruction (v, output) 'o' = (v, output ++ [v])
    instruction state _ = state
