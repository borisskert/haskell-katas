module MissingElement where

-- https://www.codewars.com/kata/5299413901337c637e000004/train/haskell

getMissingElement :: [Int] -> Int
getMissingElement xs = sum [0..9] - sum xs


-- again what learned:
-- import Data.List ((\\))
-- getMissingElement :: [Int] -> Int
-- getMissingElement = head . ([0..9] \\)


-- (\\) :: Eq a => [a] -> [a] -> [a]
-- The \\ function is list difference (non-associative). In the result of xs \\ ys,
--  the first occurrence of each element of ys in turn (if any) has been removed from xs.
--  Thus
-- (xs ++ ys) \\ xs == ys.
-- >>> "Hello World!" \\ "ell W"
-- "Hoorld!"
