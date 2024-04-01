module PartyPeople (partyPeople) where

-- https://www.codewars.com/kata/65013fc50038a68939098dcf/train/haskell

import Data.List (genericLength)

partyPeople :: [Word] -> Word
partyPeople [] = 0
partyPeople xs
  | peopleCount == genericLength peopleLeft = peopleCount
  | otherwise = partyPeople peopleLeft
  where
    peopleCount = genericLength xs
    peopleLeft = filter (<= peopleCount) xs
