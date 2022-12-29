module NumbersOfLettersOfNumbers.Kata (numbersOfLetters) where

-- https://www.codewars.com/kata/599febdc3f64cd21d8000117/train/haskell

import Data.Char (digitToInt)

numbersOfLetters :: Int -> [String]
numbersOfLetters n
  | numberInWords == wordsLengthInWords = [numberInWords]
  | wordsLength == length wordsLengthInWords = [numberInWords, wordsLengthInWords]
  | otherwise = numberInWords : numbersOfLetters wordsLength
  where
    numberInWords = inWords n
    wordsLength = length numberInWords
    wordsLengthInWords = inWords wordsLength

inWords :: Int -> String
inWords = concatMap (numbers !!) . toDigits

numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

toDigits :: Int -> [Int]
toDigits = map digitToInt . show
