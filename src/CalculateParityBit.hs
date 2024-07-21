module CalculateParityBit (checkParity) where

-- https://www.codewars.com/kata/5df261342964c80028345a0a/train/haskell
checkParity :: String -> String -> Int
checkParity "even" = parity
checkParity "odd" = (1 -) . parity

parity :: String -> Int
parity = (`mod` 2) . length . filter (== '1')
