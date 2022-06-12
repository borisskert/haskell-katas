module CountDeafRats where

-- https://www.codewars.com/kata/598106cb34e205e074000031/train/haskell

import Data.List (isPrefixOf)

countDeafRats :: String -> Int
countDeafRats rats = deafLeft + deafRight
  where
    (piedPiper : _, goingLeft, goingRight) = parse 0 ([], [], []) rats
    deafLeft = length . filter (< piedPiper) $ goingLeft
    deafRight = length . filter (> piedPiper) $ goingRight

parse :: Int -> ([Int], [Int], [Int]) -> String -> ([Int], [Int], [Int])
parse _ result [] = result
parse index (piedPiper, goingLeft, goingRight) string
  | head string == 'P' = parse (index + 1) (index : piedPiper, goingLeft, goingRight) (tail string)
  | "O~" `isPrefixOf` string = parse (index + 2) (piedPiper, index : goingLeft, goingRight) (drop 2 string)
  | "~O" `isPrefixOf` string = parse (index + 2) (piedPiper, goingLeft, index + 1 : goingRight) (drop 2 string)
  | otherwise = parse (index + 1) (piedPiper, goingLeft, goingRight) (tail string)
