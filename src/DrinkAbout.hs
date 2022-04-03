module DrinkAbout (peopleWithAgeDrink) where

-- https://www.codewars.com/kata/56170e844da7c6f647000063/train/haskell

peopleWithAgeDrink :: Int -> String
peopleWithAgeDrink age
  | age < 14 = "drink toddy"
  | age < 18 = "drink coke"
  | age < 21 = "drink beer"
  | otherwise = "drink whisky"
