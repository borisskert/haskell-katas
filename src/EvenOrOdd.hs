module EvenOrOdd where

evenOrOdd :: Integral a => a -> [Char]
evenOrOdd n = do
  if even n
    then "Even"
    else "Odd"
