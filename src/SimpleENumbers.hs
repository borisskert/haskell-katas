module SimpleENumbers where

-- https://www.codewars.com/kata/5b93f268563417c7ed0001bd/train/haskell

solve :: Int -> Int -> Int
solve a b = length . filter isEviternity $ [a .. b]

isEviternity :: Int -> Bool
isEviternity i = (all (`elem` "853") . show $ i) && eights >= fives && fives >= threes
  where
    shownI = show i :: String

    eights = length . filter (== '8') $ shownI :: Int
    fives = length . filter (== '5') $ shownI :: Int
    threes = length . filter (== '3') $ shownI :: Int
