module ListOps where
import Prelude hiding (head, tail, init, last)

-- https://www.codewars.com/kata/54592a5052756d5c5d0009c3/train/haskell

head :: [a] -> a
head (x:others) = x


tail :: [a] -> [a]
tail (x:others) = others


init :: [a] -> [a]
init [x] = []
init (x:others) = x : init others


last :: [a] -> a
last [x] = x
last (x:others) = last others
