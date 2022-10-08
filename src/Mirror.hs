module Mirror where

--  https://www.codewars.com/kata/581331293788bc1702001fa6/train/haskell

import Data.List.Split (splitOn)

mirror :: String -> String
mirror cs = init . unlines $ [border, mirrored, border]
  where
    size = maximum . map length . words $ cs :: Int
    mirrored = init . unlines . map (`formatWord` size) . splitOn " " $ cs :: String
    border = replicate (size + 4) '*' :: String

    formatWord :: String -> Int -> String
    formatWord w n = "* " ++ reverse w ++ padding ++ " *"
      where
        padding = replicate (n - length w) ' ' :: String
