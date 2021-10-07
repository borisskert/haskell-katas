module SimpleDirections where

-- https://www.codewars.com/kata/5b94d7eb1d5ed297680000ca/train/haskell

import Data.List.Split (splitOn)
import Control.Arrow ((&&&))
import Data.List (intercalate)


solve :: [String] -> [String]
solve xss = zipWith (\ order road -> intercalate separator [order, road]) orders . reverse $ roads
  where
    separator = " on "

    leftRight = map ((head &&& last) . splitOn separator) xss :: [(String, String)]
    roads = map snd leftRight :: [String]
    orders = switchDirections . map fst $ leftRight :: [String]

    switchDirections :: [String] -> [String]
    switchDirections [x] = [x]
    switchDirections [x1, x2] = [x1, switchDirection x2]
    switchDirections xs = head xs : (map switchDirection . reverse . tail $ xs)

    switchDirection "Left" = "Right"
    switchDirection "Right" = "Left"
    switchDirection direction = direction
