module Kata where

dative :: String -> String
dative word = word ++ suffix
  where
    nekVowels = "eéiíöőüű" :: String
    nakVowels = "aáoóuú" :: String

    vowels = nekVowels ++ nakVowels :: String

    lastVowel = last . filter (`elem` vowels) $ word :: Char

    toSuffix :: Char -> String
    toSuffix x
      | x `elem` nekVowels = "nek"
      | x `elem` nakVowels = "nak"
      | otherwise = ""

    suffix = toSuffix lastVowel :: String
