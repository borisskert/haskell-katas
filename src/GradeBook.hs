module GradeBook (getGrade) where

-- https://www.codewars.com/kata/55cbd4ba903825f7970000f5/train/haskell

getGrade :: Double -> Double -> Double -> Char
getGrade x y z = toGrade (avg [x, y, z])


toGrade :: Double -> Char
toGrade score
  | score >= 90.0 = 'A'
  | score >= 80.0 = 'B'
  | score >= 70.0 = 'C'
  | score >= 60.0 = 'D'
  | otherwise = 'F'


avg :: [Double] -> Double
avg numbers = do
  if count == 0.0
    then 0.0
    else sum numbers / count
  where count = fromIntegral (length numbers)
