module Office where

-- https://www.codewars.com/kata/57ed56657b45ef922300002b/train/haskell

broken :: String -> String
broken = map toggle
  where
    toggle :: Char -> Char
    toggle '0' = '1'
    toggle '1' = '0'
