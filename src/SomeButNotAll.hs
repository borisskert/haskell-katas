module SomeButNotAll (someButNotAll) where

-- https://www.codewars.com/kata/60dda5a66c4cf90026256b75/train/haskell

someButNotAll :: (a -> Bool) -> [a] -> Bool
someButNotAll p = (&&) <$> any p <*> not . all p
