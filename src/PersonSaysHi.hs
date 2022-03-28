module PersonSaysHi where

-- https://www.codewars.com/kata/57a852c353ba334961001480/train/haskell

import Text.Printf (printf)

data Person = Person {firstName :: String, lastName :: String}

sayHi :: Person -> String
sayHi p = printf "Hi, i'am %s %s and it is nice to meet You." (firstName p) (lastName p)
