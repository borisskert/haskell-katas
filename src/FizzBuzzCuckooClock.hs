module FizzBuzzCuckooClock where

-- https://www.codewars.com/kata/58485a43d750d23bad0000e6/train/haskell

import Data.List.Split.Internals (splitOn)


fizzBuzzCuckooClock :: String -> String
fizzBuzzCuckooClock time
  | minutes == 0 = cuckoo hours
  | minutes == 30 = "Cuckoo"
  | minutes `mod` 5 == 0 && minutes `mod` 3 == 0 = "Fizz Buzz"
  | minutes `mod` 5 == 0 = "Buzz"
  | minutes `mod` 3 == 0 = "Fizz"
  | otherwise = "tick"
  where
    parsed = parse time :: Time
    hours = toHours parsed
    minutes = toMinutes parsed


cuckoo :: Int -> String 
cuckoo hours
  | count == 0 = unwords . replicate 12 $ "Cuckoo"
  | otherwise = unwords . replicate count $ "Cuckoo"
  where
    count = hours `mod` 12


toHours :: Time -> Int 
toHours (Time (hours, _)) = hours


toMinutes :: Time -> Int 
toMinutes (Time (_, minutes)) = minutes


-- Time (hours, minutes)
newtype Time = Time (Int, Int)


parse :: String -> Time
parse time = Time (read (head split'), read (last split'))
  where
    split' = splitOn ":" time :: [String]
