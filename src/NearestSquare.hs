module NearestSquare where 

--  https://www.codewars.com/kata/5a805d8cafa10f8b930005ba/train/haskell

--best practice:
--nearestSquare :: Int -> Int
--nearestSquare = (^ 2) . round . sqrt . fromIntegral

nearestSquare :: Int -> Int
nearestSquare n
  | abs (squareFloor - n) < abs (squareCeiling - n) = squareFloor
  | otherwise                                       = squareCeiling
  where
    squareRoot = floor $ sqrt $ fromIntegral n
    squareFloor = squareRoot * squareRoot
    squareCeiling = (squareRoot + 1) * (squareRoot + 1)
