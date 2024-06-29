module Bananas (bananas) where

-- https://www.codewars.com/kata/5917fbed9f4056205a00001e/train/haskell
bananas :: String -> [String]
bananas = search "banana"

search :: String -> String -> [String]
search [] [] = [[]]
search [] xs = [mask xs]
search _ [] = []
search xs@(x : xs') (y : ys')
  | x /= y = omitted
  | otherwise = found ++ omitted
  where
    found = map (x :) . search xs' $ ys'
    omitted = map ('-' :) . search xs $ ys'

mask :: String -> String
mask = map (const '-')

-- #againwhatlearned
-- map to a constant value can be done by <$
-- mask xs = '-' <$ xs
