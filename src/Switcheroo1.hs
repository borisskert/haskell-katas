module Switcheroo1 where

--  https://www.codewars.com/kata/57f759bb664021a30300007d/train/haskell

switcheroo :: String -> String
switcheroo = map switch
  where
    switch :: Char -> Char
    switch 'a' = 'b'
    switch 'b' = 'a'
    switch c = c
