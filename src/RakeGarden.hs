module RakeGarden (rakeGarden) where

-- https://www.codewars.com/kata/571c1e847beb0a8f8900153d/train/haskell

rakeGarden :: String -> String
rakeGarden = unwords . map rake . words
  where
    rake :: String -> String
    rake "rock" = "rock"
    rake _ = "gravel"
