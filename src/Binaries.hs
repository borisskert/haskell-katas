module Binaries (code, decode) where

-- https://www.codewars.com/kata/5d98b6b38b0f6c001a461198/train/haskell

import Data.List (isPrefixOf, sortOn)
import Data.Maybe (fromJust)
import qualified Data.Ord

code :: String -> String
code = concat . lookupAll mappings

decode :: String -> String
decode = concat . lookupAll reverseMappings

lookupAll :: [(String, String)] -> String -> [String]
lookupAll _ [] = []
lookupAll mapping cs = value : lookupAll mapping (drop (length key) cs)
  where
    (key, value) = head . filter (\(k, v) -> k `isPrefixOf` cs) $ mapping

reverseMappings :: [(String, String)]
reverseMappings = sortOn (Data.Ord.Down . length . fst) . (extended ++) . switchKV $ mappings
  where
    keyCombos = (\xs -> [(x, y) | x <- xs, y <- xs]) . map fst $ mappings
    extended = switchKV . map (\(a, b) -> (a ++ b, lookupMapping a ++ lookupMapping b)) $ keyCombos
    lookupMapping key = fromJust . lookup key $ mappings

switchKV :: (Eq a, Eq b) => [(a, b)] -> [(b, a)]
switchKV = map (\(k, v) -> (v, k))

mappings :: [(String, String)]
mappings =
  [ ("0", "10"),
    ("1", "11"),
    ("2", "0110"),
    ("3", "0111"),
    ("4", "001100"),
    ("5", "001101"),
    ("6", "001110"),
    ("7", "001111"),
    ("8", "00011000"),
    ("9", "00011001")
  ]
