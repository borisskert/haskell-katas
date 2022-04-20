module Codewars.Kata.Deletion where

-- https://www.codewars.com/kata/554ca54ffa7d91b236000023/train/haskell

deleteNth :: [Int] -> Int -> [Int]
deleteNth lst n = collect [] lst
  where
    collect :: [Int] -> [Int] -> [Int]
    collect collected [] = collected
    collect collected (x : xs)
      | count < n = collect (collected ++ [x]) xs
      | otherwise = collect collected xs
      where
        count = length . filter (== x) $ collected :: Int
