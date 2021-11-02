module Operations where

-- https://www.codewars.com/kata/596ddaccdd42c1cf0e00005c/train/haskell

calc :: [Int] -> Int
calc =
  step4
    . step3
    . step2
    . step1
  where
    step1 = map (\x -> if x > 0 then x * x else x)
    step2 = zipWith (curry (snd . (\(index, value) -> if index `mod` 3 == 0 then (index, value * 3) else (index, value)))) [1 ..]
    step3 = zipWith (curry (snd . (\(index, value) -> if index `mod` 5 == 0 then (index, value * (-1)) else (index, value)))) [1 ..]
    step4 xs = sum xs
