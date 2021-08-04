module MyLanguages (Language,Score,myLanguages) where

-- https://www.codewars.com/kata/5b16490986b6d336c900007d/train/haskell

import Data.List (sortBy)


type Language = String
type Score = Int


myLanguages :: [(Language,Score)] -> [Language]
myLanguages = map toLanguage . sortBy compareScore . filter minimumScore


compareScore (_, scoreA) (_, scoreB) = compare scoreB scoreA


toLanguage (language, _) = language


minimumScore (_, score) = score >= 60
