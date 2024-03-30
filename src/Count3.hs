module Count3 (countChar) where

-- https://www.codewars.com/kata/5865918c6b569962950002a1/train/haskell

countChar :: String -> Char -> Int
countChar xs c = length . filter (== c) $ xs
