module PointsInCircle.Kata (points) where

--  https://www.codewars.com/kata/5b55c49d4a317adff500015f/train/haskell

points :: Int -> Int
points r =
  sum
    . map
      ( (+ 1)
          . (* 2)
          . floor
          . circleY r'
          . fromIntegral
      )
    $ [negate r, negate r + 1 .. r]
  where
    r' = fromIntegral r

circleY :: Double -> Double -> Double
circleY r x = sqrt (r * r - x * x)
