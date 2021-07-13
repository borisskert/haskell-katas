module Gravity (solution) where

--  https://www.codewars.com/kata/5b609ebc8f47bd595e000627/train/haskell

solution :: [Double] -> [String] -> Double
solution (massOne:massTwo:distance:_) (unitOne:unitTwo:unitDistance:_) = g * (toKilograms massObjOne) * (toKilograms massObjTwo) / (toMeters distanceBetween) ^ 2
  where
    massObjOne = (massOne, unitOne) :: Mass
    massObjTwo = (massTwo, unitTwo) :: Mass
    distanceBetween = (distance, unitDistance) :: Distance
    g = 6.67e-11


toKilograms :: Mass -> Double
toKilograms (mass, "kg") = mass
toKilograms (mass, "g")  = mass / 1000
toKilograms (mass, "mg") = mass / (1000 * 1000)
toKilograms (mass, "μg") = mass / (1000 * 1000 * 1000)
toKilograms (mass, "lb") = mass * 0.453592


toMeters :: Distance -> Double
toMeters (distance, "m") = distance
toMeters (distance, "cm") = distance / 100
toMeters (distance, "mm") = distance / 1000
toMeters (distance, "μm") = distance / (1000 * 1000)
toMeters (distance, "ft") = distance * 0.3048


type Mass = (Double, String)
type Distance = (Double, String)
