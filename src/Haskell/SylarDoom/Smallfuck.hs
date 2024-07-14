module Haskell.SylarDoom.Smallfuck (interpreter) where

--  https://www.codewars.com/kata/58678d29dbca9a68d80000d7/train/haskell

import Data.Function (on)

interpreter :: String -> String -> String
interpreter = process `on` read'

type Tape = (String, String)

process :: Tape -> Tape -> String
process (_, []) tape = show' tape
process (_, '>' : _) tape@(_, [_]) = show' tape
process code@(_, '>' : _) tape = process (moveRight code) (moveRight tape)
process (_, '<' : _) ([], unread) = unread
process code@(_, '<' : _) tape = process (moveRight code) (moveLeft tape)
process code@(_, '[' : _) tape@(_, '0' : _) = process (jumpForward code) tape
process code@(_, ']' : _) tape@(_, '1' : _) = process (jumpBackward code) tape
process code@(_, '*' : _) tape = process (moveRight code) (flipBit tape)
process code@(_, _ : _) tape = process (moveRight code) tape

read' :: String -> Tape
read' xs = ([], xs)

show' :: Tape -> String
show' (read, unread) = read ++ unread

flipBit :: Tape -> Tape
flipBit (read, '0' : ts) = (read, '1' : ts)
flipBit (read, '1' : ts) = (read, '0' : ts)

moveRight :: Tape -> Tape
moveRight (read, current : unread) = (read ++ [current], unread)

moveLeft :: Tape -> Tape
moveLeft (read, unread) = (init read, last read : unread)

jumpForward :: Tape -> Tape
jumpForward tape = go 0 (moveRight tape)
  where
    go :: Int -> Tape -> Tape
    go 0 tape@(_, ']' : _) = tape
    go n tape@(_, ']' : _) = go (n - 1) (moveRight tape)
    go n tape@(_, '[' : _) = go (n + 1) (moveRight tape)
    go n tape = go n (moveRight tape)

jumpBackward :: Tape -> Tape
jumpBackward tape = go 0 (moveLeft tape)
  where
    go :: Int -> Tape -> Tape
    go 0 tape@(_, '[' : _) = tape
    go n tape@(_, '[' : _) = go (n - 1) (moveLeft tape)
    go n tape@(_, ']' : _) = go (n + 1) (moveLeft tape)
    go n tape = go n (moveLeft tape)
