module WomensAge (womensAge) where

-- https://www.codewars.com/kata/5e96332d18ac870032eb735f/train/haskell

--better use printf:
-- import Text.Printf (printf)

-- womensAge :: Int -> String
-- womensAge n = printf "%d? That's just 2%d, in base %d!" n (mod n 2) (div n 2)


womensAge :: Int -> String
womensAge x = show x ++ "? That's just " ++ show realAge ++ ", in base " ++ show base ++ "!"
  where
    base = toBase x
    realAge = toRealAge x


toRealAge :: Int -> Int
toRealAge x
  | even x = 20
  | otherwise = 21


toBase :: Int -> Int 
toBase = (`div` 2)
