module CodeWars.Kata.GreetMe where

-- https://www.codewars.com/kata/535474308bb336c9980006f2/train/haskell

import Data.Char (toUpper, toLower)


greet :: String -> String
greet name = "Hello " ++ capitalize name ++ "!"


capitalize :: String -> String 
capitalize name = toUpper (head name) : map toLower (tail name)
