module MaybeConcat (concatMaybe) where

-- https://www.codewars.com/kata/57da675dfa96908b16000040/train/haskell

concatMaybe :: Maybe String -> Maybe String -> Maybe String
concatMaybe (Just a) (Just b) = Just . unwords $ [a, b]
concatMaybe _ _ = Nothing
