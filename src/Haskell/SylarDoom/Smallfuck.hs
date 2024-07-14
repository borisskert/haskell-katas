module Haskell.SylarDoom.Smallfuck (interpreter) where

import Debug.Trace (trace)

--  https://www.codewars.com/kata/58678d29dbca9a68d80000d7/train/haskell

interpreter :: String -> String -> String
interpreter code tape = process ([], code) ([], tape)

-- interpreter code tape = trace (show (code, tape)) $ tape

type Tape = (String, String)

process :: Tape -> Tape -> String
process (_, []) (read, unread) = read ++ unread
process code@(_, '*' : cs) (read, '0' : ts) = process (readOne code) (read, '1' : ts)
process code@(_, '*' : cs) (read, '1' : ts) = process (readOne code) (read, '0' : ts)
process code@(_, '>' : cs) (read, [current]) = read ++ [current]
process code@(_, '>' : cs) tape@(read, t : ts) = process (readOne code) (readOne tape)
process code@(_, '<' : cs) ([], unread) = unread
process code@(_, '<' : cs) (read, unread) = process (readOne code) (init read, last read : unread)
process code@(_, '[' : cs) tape@(read, '0' : unread) = process (jumpForward code) tape
process code@(_, ']' : cs) tape@(read, '1' : unread) = process (jumpBackward code) tape
process code@(_, _ : cs) (read, unread) = process (readOne code) (read, unread)

readOne :: Tape -> Tape
readOne (read, current : unread) = (read ++ [current], unread)

unreadOne :: Tape -> Tape
unreadOne (read, current : unread) = (init read, last read : unread)

jumpForward :: Tape -> Tape
-- jumpForward tape@(read, ']' : unread) = (read ++ [']'], unread)
jumpForward tape@(read, ']' : unread) = tape
jumpForward tape@(read, current : unread) = jumpForward (readOne tape)

jumpBackward :: Tape -> Tape
-- jumpBackward tape@(read, '[' : unread) = (read ++ ['['], unread)
jumpBackward tape@(read, '[' : unread) = tape
jumpBackward tape@(read, current : unread) = jumpBackward (unreadOne tape)
