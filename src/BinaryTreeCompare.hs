module BinaryTreeCompare (BinaryTreeCompare.compare) where

-- https://www.codewars.com/kata/55847fcd3e7dadc9f800005f/train/haskell

import Preloaded (Tree(..)) -- data Tree = Node { val :: Int, left, right :: Maybe Tree }

import Prelude hiding (compare)

compare :: Maybe Tree -> Maybe Tree -> Bool
compare Nothing Nothing = True
compare (Just nodeA) (Just nodeB)
  | valueA /= valueB = False
  | otherwise = compare leftA leftB && compare rightA rightB
  where
    valueA = val nodeA
    valueB = val nodeB
    leftA = left nodeA
    leftB = left nodeB
    rightA = right nodeA
    rightB = right nodeB
compare _ _ = False
