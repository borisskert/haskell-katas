module BlockSeats where

-- https://www.codewars.com/kata/588417e576933b0ec9000045/train/haskell

seatsBlocked :: Int -> Int -> Int -> Int -> Int
seatsBlocked tot_cols tot_rows col row = (tot_rows - row) * (tot_cols - col + 1)
