module SF49 where

-- https://www.codewars.com/kata/5888514674b58e929a000036/train/haskell

import Data.Char (chr)

decipher :: String -> String
decipher = map (chr . read) . foldl collect []
  where
    collect :: [String] -> Char -> [String]
    collect [] c = [[c]]
    collect ords c
      | lastOrd < 97 || lastOrd > 122 = init ords ++ [last ords ++ [c]]
      | otherwise = ords ++ [[c]]
      where
        lastOrd = read . last $ ords :: Int
