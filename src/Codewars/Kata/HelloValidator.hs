module Codewars.Kata.HelloValidator where

--  https://www.codewars.com/kata/56a4addbfd4a55694100001f/train/haskell

import Data.List (isInfixOf)
import Data.Char (toLower)


validateHello :: String -> Bool
validateHello xs = any (\x -> isInfixOf x greeting) greetings
  where
    greeting = map toLower xs
    greetings = ["hello", "ciao", "salut", "hallo", "hola", "ahoj", "czesc", "zdravo", "privjet"]
