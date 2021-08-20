module UniqueStrChar where

-- https://www.codewars.com/kata/5a262cfb8f27f217f700000b/train/haskell

solve :: String -> String -> String 
solve xs ys = filter (`notElem` ys) xs ++ filter (`notElem` xs) ys
