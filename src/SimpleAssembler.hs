module SimpleAssembler (simpleAssembler) where

-- https://www.codewars.com/kata/58e24788e24ddee28e000053/train/haskell

import qualified Data.Map.Strict as M

type Registers = M.Map String Int

type InstructionCounter = Int

simpleAssembler :: [String] -> Registers
simpleAssembler xs = registers
  where
    program = map parse xs
    (registers, _) = operate M.empty 0

    operate :: Registers -> InstructionCounter -> (Registers, InstructionCounter)
    operate registers counter
      | counter < 0 || counter >= length program = (registers, counter)
      | otherwise = operate registers' counter'
      where
        (registers', counter') = perform (program !! counter) registers

        perform :: Operation -> Registers -> (Registers, InstructionCounter)
        perform (MovR x y) regs = (M.insert x value regs, counter + 1)
          where
            value = M.findWithDefault 0 y regs
        perform (MovC x y) regs = (M.insert x y regs, counter + 1)
        perform (Inc x) regs = (M.insert x (value + 1) regs, counter + 1)
          where
            value = M.findWithDefault 0 x regs
        perform (Dec x) regs = (M.insert x (value - 1) regs, counter + 1)
          where
            value = M.findWithDefault 0 x regs
        perform (JnzRC x y) regs
          | value /= 0 = (regs, counter + y)
          | otherwise = (regs, counter + 1)
          where
            value = M.findWithDefault 0 x regs
        perform (JnzCC x y) regs
          | x /= 0 = (regs, counter + y)
          | otherwise = (regs, counter + 1)
        perform (JnzCR x y) regs
          | x /= 0 = (regs, counter + value)
          | otherwise = (regs, counter + 1)
          where
            value = M.findWithDefault 0 y regs
        perform (JnzRR x y) regs
          | valueX /= 0 = (regs, counter + valueY)
          | otherwise = (regs, counter + 1)
          where
            valueX = M.findWithDefault 0 x regs
            valueY = M.findWithDefault 0 y regs

data Operation
  = MovR String String
  | MovC String Int
  | Inc String
  | Dec String
  | JnzRC String Int
  | JnzCC Int Int
  | JnzCR Int String
  | JnzRR String String

parse :: String -> Operation
parse xs = parse . words $ xs
  where
    parse :: [String] -> Operation
    parse ["mov", x, y]
      | isConstant y = MovC x (read y)
      | otherwise = MovR x y
    parse ["inc", x] = Inc x
    parse ["dec", x] = Dec x
    parse ["jnz", x, y]
      | isConstant x && isConstant y = JnzCC (read x) (read y)
      | isConstant x = JnzCR (read x) y
      | isConstant y = JnzRC x (read y)
      | otherwise = JnzRR x y
    parse _ = error ("Invalid operation " ++ xs)

    isConstant :: String -> Bool
    isConstant = all (\x -> x `elem` ['0' .. '9'] || x == '-')
