module MinMax where

-- https://www.codewars.com/kata/57a1ae8c7cb1f31e4e000130/train/haskell

getMinMax :: [Int] -> (Int, Int)
getMinMax list = (min, max)
  where
    min = minimum list
    max = maximum list


--not best practise, but interesting solutions:
-- (1)
-- getMinMax = (,) <$> minimum <*> maximum


-- (2)
-- import Control.Arrow ((&&&))
-- getMinMax = minimum &&& maximum
