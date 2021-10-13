module Average1 where

-- https://www.codewars.com/kata/57a2013acf1fa5bfc4000921/train/haskell

avg :: [Float] -> Float
avg numbers = do
  if count == 0.0
    then 0.0
    else sum numbers / count
  where count = fromIntegral (length numbers) :: Float
