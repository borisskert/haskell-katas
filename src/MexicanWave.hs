module MexicanWave where

-- https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/haskell

import Data.Char (isLetter, toUpper)

wave :: String -> [String]
wave text = map (capitalizeAt text . fst) letters
  where
    letters = filter (isLetter. snd) . zip [0..] $ text

    capitalizeAt :: String -> Int -> String
    capitalizeAt text index = zipWith (\ i letter -> (if index == i then toUpper letter else letter)) [0..] text
