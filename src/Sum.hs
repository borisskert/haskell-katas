module Sum where
import Prelude hiding (sum)

-- https://www.codewars.com/kata/53dc54212259ed3d4f00071c/train/haskell

sum :: Num a => [a] -> a
sum [] = 0
sum (first:others) = first + sum others
