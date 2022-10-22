module ReversingAProcess (decode) where

-- https://www.codewars.com/kata/5dad6e5264e25a001918a1fc/train/haskell

import Data.Char (chr, isDigit, ord)
import Data.Maybe (maybe)

decode :: String -> Either String String
decode encoded = maybe (Left "Impossible to decode") (Right . (`decrypt` text)) . crack $ publicKey
  where
    publicKey = read . takeWhile isDigit $ encoded :: Int
    text = dropWhile isDigit encoded :: String

alphabetSize = 26

crack :: Int -> Maybe Int
crack publicKey
  | (publicKey * key) `mod` alphabetSize /= 1 = Nothing
  | otherwise = Just key
  where
    (key, _) = publicKey `extendedEuklid` alphabetSize

extendedEuklid :: Int -> Int -> (Int, Int)
extendedEuklid a 0 = (1, 0)
extendedEuklid a b = (t, s - q * t)
  where
    q = a `div` b
    (s, t) = extendedEuklid b (a - q * b)

decrypt :: Int -> String -> String
decrypt key = map (decryptChar key)

decryptChar :: Int -> Char -> Char
decryptChar key = toChar . (* (key `mod` alphabetSize)) . toCode

offset = ord 'a'

toCode :: Char -> Int
toCode c = ord c - offset

toChar :: Int -> Char
toChar = chr . (+ offset) . (`mod` alphabetSize)
