module Last where
import Prelude hiding (last)

-- https://www.codewars.com/kata/541629460b198da04e000bb9/train/haskell

last :: [a] -> a
last [x] = x
last xs = last . tail $ xs
