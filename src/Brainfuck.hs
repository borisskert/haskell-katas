module Brainfuck where

import Data.Char
import Data.Map (Map, empty, insert, lookup)
import Data.Maybe (fromMaybe)
import Prelude hiding (Left, Right, lookup)

-- https://www.codewars.com/kata/526156943dfe7ce06200063e/train/haskell

brainfuck :: String -> String -> String
brainfuck code input = output
  where
    program = compile code
    (output, _, _) = run (0, empty) program input

data Instruction = Operation Char | Loop [Instruction] | Block [Instruction] deriving (Show, Eq)

type Program = [Instruction]

type Input = [Char]

type Output = String

type InstructionPointer = Int

type DataPointer = Int

type Memory = Map Int Int

type Machine = (DataPointer, Memory)

run :: Machine -> Program -> Input -> (Output, Input, Machine)
run machine instructions input = runRecursively machine instructions input ""
  where
    runRecursively :: Machine -> Program -> Input -> Output -> (Output, Input, Machine)
    runRecursively machine [] input output = (output, input, machine)
    runRecursively (dataPointer, memory) (Operation '+' : instructions) input output = runRecursively (dataPointer, updatedMemory) instructions input output
      where
        byte = fromMaybe 0 . lookup dataPointer $ memory
        updatedMemory = insert dataPointer ((byte + 1) `mod` 256) memory
    runRecursively (dataPointer, memory) (Operation '-' : instructions) input output = runRecursively (dataPointer, updatedMemory) instructions input output
      where
        byte = fromMaybe 0 . lookup dataPointer $ memory
        updatedMemory = insert dataPointer ((byte - 1) `mod` 256) memory
    runRecursively (dataPointer, memory) (Operation '<' : instructions) input output = runRecursively (dataPointer - 1, memory) instructions input output
    runRecursively (dataPointer, memory) (Operation '>' : instructions) input output = runRecursively (dataPointer + 1, memory) instructions input output
    runRecursively (dataPointer, memory) (Operation '.' : instructions) input output = runRecursively (dataPointer, memory) instructions input (output ++ [chr byte])
      where
        byte = fromMaybe 0 . lookup dataPointer $ memory :: Int
    runRecursively (dataPointer, memory) (Operation ',' : instructions) (c : input) output = runRecursively (dataPointer, updatedMemory) instructions input output
      where
        byte = ord c
        updatedMemory = insert dataPointer byte memory
    runRecursively machine@(dataPointer, memory) instructions'@(Loop block : instructions) input output
      | byte /= 0 = runRecursively machine' instructions' input' output'
      | otherwise = runRecursively machine instructions input output
      where
        (output', input', machine') = runRecursively machine block input output
        (dataPointer', memory') = machine'
        byte = fromMaybe 0 . lookup dataPointer $ memory
    runRecursively machine (Block block : instructions) input output = runRecursively machine' instructions input' output'
      where
        (output', input', machine') = runRecursively machine block input output

type State = Int

data Symbol = N Char | T Char deriving (Eq)

-- SLR Grammar:
-- S -> C
-- C -> C I
-- C -> I
-- I -> +
-- I -> -
-- I -> <
-- I -> >
-- I -> .
-- I -> ,
-- I -> [ C ]

compile :: String -> Program
compile code = slr [0] [] code []
  where
    slr :: [State] -> [Symbol] -> [Char] -> Program -> Program
    slr states@(0 : _) symbols@(N 'C' : _) code program = slr (1 : states) symbols code program
    slr states@(0 : _) symbols@(N 'I' : _) code program = slr (2 : states) symbols code program
    slr states@(0 : _) symbols ('+' : code) program = slr (3 : states) (T '+' : symbols) code program
    slr states@(0 : _) symbols ('-' : code) program = slr (4 : states) (T '-' : symbols) code program
    slr states@(0 : _) symbols ('<' : code) program = slr (5 : states) (T '<' : symbols) code program
    slr states@(0 : _) symbols ('>' : code) program = slr (6 : states) (T '>' : symbols) code program
    slr states@(0 : _) symbols ('.' : code) program = slr (7 : states) (T '.' : symbols) code program
    slr states@(0 : _) symbols (',' : code) program = slr (8 : states) (T ',' : symbols) code program
    slr states@(0 : _) symbols ('[' : code) program = slr (9 : states) (T '[' : symbols) code program
    slr (0 : _) _ _ _ = error "State0: Illegal token or symbol"
    slr states@(1 : _) symbols@(N 'I' : _) code program = slr (10 : states) symbols code program
    slr states@(1 : _) symbols ('+' : code) program = slr (3 : states) (T '+' : symbols) code program
    slr states@(1 : _) symbols ('-' : code) program = slr (4 : states) (T '-' : symbols) code program
    slr states@(1 : _) symbols ('<' : code) program = slr (5 : states) (T '<' : symbols) code program
    slr states@(1 : _) symbols ('>' : code) program = slr (6 : states) (T '>' : symbols) code program
    slr states@(1 : _) symbols ('.' : code) program = slr (7 : states) (T '.' : symbols) code program
    slr states@(1 : _) symbols (',' : code) program = slr (8 : states) (T ',' : symbols) code program
    slr states@(1 : _) symbols ('[' : code) program = slr (9 : states) (T '[' : symbols) code program
    slr (1 : _) _ [] program = program
    slr (1 : _) _ _ _ = error "State1: Illegal token or symbol"
    slr (2 : states) (N 'I' : symbols) code (i : program) = slr states (N 'C' : symbols) code (Block [i] : program)
    slr (2 : _) _ _ _ = error "State2: Illegal symbol on stack"
    slr (3 : states) (T '+' : symbols) code program = slr states (N 'I' : symbols) code (Operation '+' : program)
    slr (3 : _) _ _ _ = error "State3: Illegal symbol on stack"
    slr (4 : states) (T '-' : symbols) code program = slr states (N 'I' : symbols) code (Operation '-' : program)
    slr (4 : _) _ _ _ = error "State4: Illegal symbol on stack"
    slr (5 : states) (T '<' : symbols) code program = slr states (N 'I' : symbols) code (Operation '<' : program)
    slr (5 : _) _ _ _ = error "State5: Illegal symbol on stack"
    slr (6 : states) (T '>' : symbols) code program = slr states (N 'I' : symbols) code (Operation '>' : program)
    slr (6 : _) _ _ _ = error "State6: Illegal symbol on stack"
    slr (7 : states) (T '.' : symbols) code program = slr states (N 'I' : symbols) code (Operation '.' : program)
    slr (7 : _) _ _ _ = error "State7: Illegal symbol on stack"
    slr (8 : states) (T ',' : symbols) code program = slr states (N 'I' : symbols) code (Operation ',' : program)
    slr (8 : _) _ _ _ = error "State8: Illegal symbol on stack"
    slr states@(9 : _) symbols@(N 'C' : _) code program = slr (11 : states) symbols code program
    slr states@(9 : _) symbols@(N 'I' : _) code program = slr (2 : states) symbols code program
    slr states@(9 : _) symbols ('+' : code) program = slr (3 : states) (T '+' : symbols) code program
    slr states@(9 : _) symbols ('-' : code) program = slr (4 : states) (T '-' : symbols) code program
    slr states@(9 : _) symbols ('<' : code) program = slr (5 : states) (T '<' : symbols) code program
    slr states@(9 : _) symbols ('>' : code) program = slr (6 : states) (T '>' : symbols) code program
    slr states@(9 : _) symbols ('.' : code) program = slr (7 : states) (T '.' : symbols) code program
    slr states@(9 : _) symbols (',' : code) program = slr (8 : states) (T ',' : symbols) code program
    slr states@(9 : _) symbols ('[' : code) program = slr (9 : states) (T '[' : symbols) code program
    slr (9 : _) _ _ _ = error "State9: Illegal token or symbol"
    slr (10 : _ : states) (N 'I' : N 'C' : symbols) code (i : (Block block) : program) = slr states (N 'C' : symbols) code (Block (block ++ [i]) : program)
    slr (10 : _) _ _ _ = error "State10: Illegal symbols on stack"
    slr states@(11 : _) symbols@(N 'I' : _) code program = slr (10 : states) symbols code program
    slr states@(11 : _) symbols ('+' : code) program = slr (3 : states) (T '+' : symbols) code program
    slr states@(11 : _) symbols ('-' : code) program = slr (4 : states) (T '-' : symbols) code program
    slr states@(11 : _) symbols ('<' : code) program = slr (5 : states) (T '<' : symbols) code program
    slr states@(11 : _) symbols ('>' : code) program = slr (6 : states) (T '>' : symbols) code program
    slr states@(11 : _) symbols ('.' : code) program = slr (7 : states) (T '.' : symbols) code program
    slr states@(11 : _) symbols (',' : code) program = slr (8 : states) (T ',' : symbols) code program
    slr states@(11 : _) symbols ('[' : code) program = slr (9 : states) (T '[' : symbols) code program
    slr states@(11 : _) symbols (']' : code) program = slr (12 : states) (T ']' : symbols) code program
    slr (11 : _) _ _ _ = error "State11: Illegal symbol"
    slr (12 : _ : _ : states) (T ']' : N 'C' : T '[' : symbols) code ((Block block) : program) = slr states (N 'I' : symbols) code (Loop block : program)
    slr (12 : _) _ _ _ = error "State12: Illegal symbols on stack"
    slr _ _ _ _ = error "Unknown state"
