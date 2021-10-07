module Codewars.Kata.Challenge where

-- https://www.codewars.com/kata/586566b773bd9cbe2b000013/train/haskell

noRepeat :: String -> Char
noRepeat xs = snd . head . filter ((== 1) . fst) . map (\x -> (toCount x, x)) $ xs
  where
    toCount :: Char -> Int
    toCount c = length . filter (== c) $ xs
