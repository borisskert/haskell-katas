module WordMesh (wordMesh) where

import Data.List (inits, isSuffixOf)
import Data.List.Split (divvy)
import Data.Maybe (fromJust, isJust)

-- https://www.codewars.com/kata/5c1ae703ba76f438530000a2/train/haskell

wordMesh :: [String] -> Maybe String
wordMesh = concatMaybes (++) . map (\(a : b : _) -> mesh a b) . divvy 2 1

mesh :: String -> String -> Maybe String
mesh xs ys
  | null found = Nothing
  | otherwise = Just . head $ found
  where
    found = filter (`isSuffixOf` xs) . init . reverse . inits $ ys

concatMaybes :: (a -> a -> a) -> [Maybe a] -> Maybe a
concatMaybes f xs = foldl (mergeMaybes f) (head xs) . tail $ xs

mergeMaybes :: (a -> b -> c) -> Maybe a -> Maybe b -> Maybe c
mergeMaybes f ma mb
  | isJust ma && isJust mb = Just . f (fromJust ma) $ fromJust mb
  | otherwise = Nothing
