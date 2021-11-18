module KeypadHorror (computerToPhone) where

-- https://www.codewars.com/kata/5572392fee5b0180480001ae/train/haskell

computerToPhone :: String -> String
computerToPhone = map convert
  where
    convert '1' = '7'
    convert '2' = '8'
    convert '3' = '9'
    convert '7' = '1'
    convert '8' = '2'
    convert '9' = '3'
    convert c = c
