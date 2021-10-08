module Codewars.Kata.AllNoneAny where

import Prelude hiding (all, any)


all, none, any :: (a -> Bool) -> [a] -> Bool
all _ [] = True
all predicate (x:xs)
  | predicate x = all predicate xs
  | otherwise = False


none _ [] = True
none predicate (x:xs)
  | predicate x = False
  | otherwise = none predicate xs


any _ [] = False
any predicate (x:xs)
  | predicate x = True
  | otherwise = any predicate xs
