module Haskell.SylarDoom.Smallfuck (interpreter, unreadOne, jumpBackward, jumpForward) where

--  https://www.codewars.com/kata/58678d29dbca9a68d80000d7/train/haskell

interpreter :: String -> String -> String
interpreter code tape = process ([], code) ([], tape)

type Tape = (String, String)

process :: Tape -> Tape -> String
process (_, []) (read, unread) = read ++ unread
process code@(_, '*' : cs) (read, '0' : ts) = process (readOne code) (read, '1' : ts)
process code@(_, '*' : cs) (read, '1' : ts) = process (readOne code) (read, '0' : ts)
process code@(_, '>' : cs) (read, [current]) = read ++ [current]
process code@(_, '>' : cs) tape@(read, t : ts) = process (readOne code) (readOne tape)
process code@(_, '<' : cs) ([], unread) = unread
process code@(_, '<' : cs) tape@(read, unread) = process (readOne code) (unreadOne tape)
process code@(_, '[' : cs) tape@(read, '0' : unread) = process (jumpForward code) tape
process code@(_, ']' : cs) tape@(read, '1' : unread) = process (jumpBackward code) tape
process code@(_, _ : cs) (read, unread) = process (readOne code) (read, unread)

readOne :: Tape -> Tape
readOne (read, current : unread) = (read ++ [current], unread)

unreadOne :: Tape -> Tape
unreadOne (read, unread) = (init read, last read : unread)

jumpForward :: Tape -> Tape
jumpForward tape = go 0 (readOne tape)
  where
    go :: Int -> Tape -> Tape
    go 0 tape@(read, ']' : unread) = tape
    go n tape@(read, ']' : unread) = go (n - 1) (readOne tape)
    go n tape@(read, '[' : unread) = go (n + 1) (readOne tape)
    go n tape@(read, _ : unread) = go n (readOne tape)

jumpBackward :: Tape -> Tape
jumpBackward tape = go 0 (unreadOne tape)
  where
    go :: Int -> Tape -> Tape
    go 0 tape@(read, '[' : unread) = tape
    go n tape@(read, '[' : unread) = go (n - 1) (unreadOne tape)
    go n tape@(read, ']' : unread) = go (n + 1) (unreadOne tape)
    go n tape@(read, _ : unread) = go n (unreadOne tape)
