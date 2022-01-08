module BinaryTreeSearch where

-- https://www.codewars.com/kata/5acc79efc6fde7838a0000a0/train/haskell

data Tree a = Nil | Node (Tree a) a (Tree a) deriving (Show)

search :: Int -> Tree Int -> Bool
search _ Nil = False
search x (Node left i right)
  | x == i = True
  | not (search x right) = search x left
  | otherwise = True
