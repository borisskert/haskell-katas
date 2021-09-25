module Codewars.G964.Wallpaper where

wallpaper :: Double -> Double -> Double -> String
wallpaper 0.0 _ _ = "zero"
wallpaper _ 0.0 _ = "zero"
wallpaper _ _ 0.0 = "zero"
wallpaper l w h = numbers !! count
  where
    roll = 0.52 * 10.0 :: Double
    reserveFactor = 1.15 :: Double
    
    surface = 2 * l * h + 2 * w * h :: Double
    
    count = ceiling $ surface / roll * reserveFactor :: Int

    numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve","thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
