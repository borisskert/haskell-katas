module BasicMathematicalOperations (basicOp) where

basicOp :: Char -> Int -> Int -> Int
basicOp operation a b = do
  case operation of
    '+' -> a + b
    '-' -> a - b
    '*' -> a * b
    '/' -> a `div` b
    _ -> error "Unknown operation"
