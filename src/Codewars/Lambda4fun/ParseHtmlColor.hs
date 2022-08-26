module Codewars.Lambda4fun.ParseHtmlColor where

-- https://www.codewars.com/kata/58b57ae2724e3c63df000006/train/haskell

import Codewars.Lambda4fun.ParseHtmlColor.PresetColors (presetColors)
import Data.List.Split (divvy)
import Data.Map.Strict (Map, fromList, (!))
import Data.Char (toLower)

parseHtmlColor :: String -> Map Char Int
parseHtmlColor ['#', r, g, b] = toMap . map (hexToDec . replicate 2) $ [r, g, b]
parseHtmlColor ('#' : xs) = toMap . map hexToDec . divvy 2 2 $ xs
parseHtmlColor xs = parseHtmlColor . (presetColors !) . map toLower $ xs

hexToDec :: String -> Int
hexToDec = read . ("0x" ++)

toMap :: [Int] -> Map Char Int
toMap (r : g : b : _) = fromList [('r', r), ('g', g), ('b', b)]
