module BodyMassIndex where

-- https://www.codewars.com/kata/57a429e253ba3381850000fb/train/haskell

bmi :: Float -> Float -> String
bmi weight height = do
  if index <= 18.5 then "Underweight"
  else if index <= 25.0 then "Normal"
  else if index <= 30.0 then "Overweight"
  else if index > 30.0 then "Obese"
  else error "invalid values"
  where index = weight / height^2
