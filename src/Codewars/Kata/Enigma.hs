module Codewars.Kata.Enigma (plugboard) where

--  https://www.codewars.com/kata/5523b97ac8f5025c45000900/train/haskell

import Data.List (nub)
import Data.List.Split (divvy)
import Data.Maybe (fromJust, fromMaybe, isNothing)

plugboard :: String -> Either String (Char -> Char)
plugboard xs
  | isNothing wires = Left "Returned a function on an invalid configuration"
  | otherwise = Right process
  where
    wires = toWires xs

    process :: Char -> Char
    process c = fromMaybe c . lookup c . fromJust $ wires

toWires :: String -> Maybe [(Char, Char)]
toWires xs
  | nub xs /= xs = Nothing
  | odd . length $ xs = Nothing
  | any (uncurry (==)) wires = Nothing
  | (> 10) . length $ wires = Nothing
  | otherwise = Just wires
  where
    wires = concatMap (\(a : b : _) -> [(a, b), (b, a)]) . divvy 2 2 $ xs :: [(Char, Char)]
