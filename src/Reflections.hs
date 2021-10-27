module Reflections where

-- https://www.codewars.com/kata/5eaf88f92b679f001423cc66/train/haskell

reflections :: Int -> Int -> Bool
reflections maxX maxY = ray start (Vector {x = 1, y = 1})
  where
    start = Vector {x = 0, y = 0}
    end = Vector {x = maxX, y = maxY}

    ray :: Vector -> Vector -> Bool
    ray position direction
      | position `add` direction == start = False
      | position `add` direction == end = True
      | otherwise = ray newPosition newDirection
      where
        newPosition = position `add` direction
        newDirection
          | (x newPosition == maxX || x newPosition == 0) && (y newPosition == maxY || y newPosition == 0) = Vector {x = - x direction, y = - y direction}
          | x newPosition == maxX || x newPosition == 0 = Vector {x = - x direction, y = y direction}
          | y newPosition == maxY || y newPosition == 0 = Vector {x = x direction, y = - y direction}
          | otherwise = direction

data Vector = Vector {x :: Int, y :: Int} deriving (Eq, Show)

add :: Vector -> Vector -> Vector
add a b = Vector {x = x a + x b, y = y a + y b}


-- best practice:
-- reflections :: Int -> Int -> Bool
-- reflections x y
--  | odd x = odd y
--  | odd y = False
--  | otherwise = reflections (div x 2) (div y 2)
