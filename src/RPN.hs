module RPN where

--  https://www.codewars.com/kata/52f78966747862fc9a0009ae/train/haskell

calc :: String -> Double
calc = calcStack . map parse . words

calcStack :: [Token] -> Double
calcStack = (`go` [])
  where
    go :: [Token] -> [Token] -> Double
    go [] [] = 0
    go [token] [] = valueOf token
    go [] [token] = valueOf token
    go (t : tokens) operands
      | isOperand t = go tokens (t : operands)
      | otherwise = go tokens (result : remainingOperands)
      where
        (a : b : remainingOperands) = operands :: [Token]
        (Operator operator) = t
        result = Operand $ operator (valueOf b) (valueOf a) :: Token

data Token = Operand Double | Operator (Double -> Double -> Double)

parse :: String -> Token
parse "+" = Operator (+)
parse "*" = Operator (*)
parse "-" = Operator (-)
parse "/" = Operator (/)
parse token = Operand . (read :: String -> Double) $ token

isOperand :: Token -> Bool
isOperand (Operator _) = False
isOperand (Operand _) = True

valueOf :: Token -> Double
valueOf (Operand value) = value
valueOf (Operator _) = error "Not an operand"
