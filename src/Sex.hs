module Sex (sex) where

-- https://www.codewars.com/kata/56530b444e831334c0000020/train/haskell

sex :: String -> String
sex "XY" = "Congratulations! You\'re going to have a son."
sex "XX" = "Congratulations! You\'re going to have a daughter."
sex _ = error "Invalid input"
