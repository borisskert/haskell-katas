module WhoIsPaying where

--  https://www.codewars.com/kata/58bf9bd943fadb2a980000a7/train/haskell

whoIsPaying :: String -> [String]
whoIsPaying ""   = [""]
whoIsPaying [c]  = [[c]]
whoIsPaying [a, b]  = [[a, b]]
whoIsPaying name = [name, [head name] ++ [head $ tail name]]
