module Hamming where

import Data.List (sort, nub)


hamming :: Int -> Int
hamming n = last . sort .  take (n - 1) . nub . map value . concat . iterate next2 $ [(0, 0, 0)]
  where
    bla = iterate next2 $ [(0, 0, 0)]

next2 :: [(Int, Int, Int)] -> [(Int, Int, Int)]
next2 = concatMap next

next :: (Int, Int, Int) -> [(Int, Int, Int)]
next (two, three, five) =
  [
     (two + 1, three, five),
        (two, three + 1, five),
        (two, three, five + 1)
--    (two + 2, three, five),
--    (two + 1, three + 1, five),
--    (two + 1, three, five + 1),
--    (two, three + 2, five),
--    (two, three + 1, five + 1),
--    (two, three, five + 2)
  ]

value :: (Int, Int, Int) -> Int
value (two, three, five) = 2 ^ two * 2 ^ three * 5 ^ five
