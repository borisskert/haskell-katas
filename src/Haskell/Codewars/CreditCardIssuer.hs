module Haskell.Codewars.CreditCardIssuer where

-- https://www.codewars.com/kata/5701e43f86306a615c001868/train/haskell

import Data.List (isPrefixOf)

--best practice?
-- getIssuer :: Int -> String
-- getIssuer n | length s == 16 && (any (`isPrefixOf` s) . map show $ [51..55]) = "Mastercard"
--             | length s == 15 && any (`isPrefixOf` s) ["34", "37"] = "AMEX"
--             | elem (length s) [13, 16] && isPrefixOf "4" s = "VISA"
--             | length s == 16 && isPrefixOf "6011" s = "Discover"
--             | otherwise = "Unknown"
--             where s = show n


getIssuer :: Int -> String
getIssuer number
  | length cardNumber == 15 && (isPrefixOf "34" cardNumber || isPrefixOf "37" cardNumber) = "AMEX"
  | length cardNumber == 16 && isPrefixOf "6011" cardNumber = "Discover"
  | length cardNumber == 16 && (isPrefixOf "51" cardNumber || isPrefixOf "52" cardNumber || isPrefixOf "53" cardNumber || isPrefixOf "54" cardNumber || isPrefixOf "55" cardNumber) = "Mastercard"
  | (length cardNumber == 13 || length cardNumber == 16) && isPrefixOf "4" cardNumber = "VISA"
  | otherwise = "Unknown"
  where
    cardNumber = show number :: String
