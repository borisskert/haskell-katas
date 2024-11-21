module CanYouGetTheLoop (loopSize) where

import CanYouGetTheLoop.Types

-- https://www.codewars.com/kata/52a89c2ea8ddc5547a000863/train/haskell

loopSize :: (Eq a) => Node a -> Int
loopSize = length . findLoop

findLoop :: (Eq a) => Node a -> [Node a]
findLoop node = go [] . detectLoop node . next $ node
  where
    detectLoop :: (Eq a) => Node a -> Node a -> Node a
    detectLoop slow fast
      | slow == fast = slow
      | otherwise = detectLoop (next slow) (next (next fast))

    go :: (Eq a) => [Node a] -> Node a -> [Node a]
    go [] node = go [node] (next node)
    go found node
      | node `elem` found = found
      | otherwise = go (found ++ [node]) (next node)
