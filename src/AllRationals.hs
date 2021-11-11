module AllRationals where

-- https://www.codewars.com/kata/5e529a6fb95d280032d04389/train/haskell

ratAt :: Integer -> (Integer, Integer)
ratAt i = search key (1, 1)
  where
    key = makeKey i

    search :: [Bool] -> (Integer, Integer) -> (Integer, Integer)
    search x (a, b)
      | null x = (a, b)
      | head x = search (tail x) (a + b, b)
      | otherwise = search (tail x) (a, b + a)

indexOf :: (Integer, Integer) -> Integer
indexOf x = parseKey (search x)
  where
    search :: (Integer, Integer) -> [Bool]
    search (a, b)
      | (a, b) == (1, 1) = []
      | a > b = search (a - b, b) ++ [True]
      | b > a = search (a, b - a) ++ [False]

makeKey :: Integer -> [Bool]
makeKey 0 = []
makeKey i
  | even i = makeKey (i `div` 2 - 1) ++ [True]
  | odd i = makeKey ((i - 1) `div` 2) ++ [False]

parseKey :: [Bool] -> Integer
parseKey [] = 0
parseKey xs
  | not (last xs) = parseKey (init xs) * 2 + 1
  | otherwise = (parseKey (init xs) + 1) * 2
