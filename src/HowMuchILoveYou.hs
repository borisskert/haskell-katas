module HowMuchILoveYou (howMuchILoveYou) where

-- https://www.codewars.com/kata/57f24e6a18e9fad8eb000296/train/haskell

howMuchILoveYou :: Int -> String
howMuchILoveYou nbPetals
  | (nbPetals - 1) `mod` 6 == 0 = "I love you"
  | (nbPetals - 1) `mod` 6 == 1 = "a little"
  | (nbPetals - 1) `mod` 6 == 2 = "a lot"
  | (nbPetals - 1) `mod` 6 == 3 = "passionately"
  | (nbPetals - 1) `mod` 6 == 4 = "madly"
  | (nbPetals - 1) `mod` 6 == 5 = "not at all"
  | otherwise = error "Should not happen"
