module DotCalculator (calculator) where

-- https://www.codewars.com/kata/6071ef9cbe6ec400228d9531/train/haskell

calculator :: String -> String
calculator txt
  | operator == "+" = replicate (a + b) '.'
  | operator == "-" = replicate (a - b) '.'
  | operator == "*" = replicate (a * b) '.'
  | operator == "//" = replicate (a `div` b) '.'
  | otherwise = error "Unknown operator"
  where
    [operandA, operator, operandB] = words txt
    a = length operandA
    b = length operandB
