module Codewars.G964.Salesmantravel where

-- https://www.codewars.com/kata/56af1a20509ce5b9b000001e/train/haskell

import Data.List (intercalate)
import Data.List.Split (splitOn)
import Data.Maybe (fromJust, isJust)

data Address = Address {street :: String, state :: String, postal :: String, number :: String}

data Search = Search {searchState :: String, searchPostal :: String}

travel :: [Char] -> [Char] -> [Char]
travel r zipcode
  | isJust search = concat [zipcode, ":", streets, "/", numbers]
  | otherwise = zipcode ++ ":/"
  where
    search = tryParseSearch zipcode :: Maybe Search
    Search {searchState = searchState, searchPostal = searchPostal} = fromJust search
    addresses = parseAddresses r :: [Address]
    filtered = filter (\a -> postal a == searchPostal) . filter (\a -> state a == searchState) $ addresses :: [Address]
    state' = state . head $ filtered :: String
    stateZipcode = unwords [state', zipcode] :: String
    streets = intercalate "," . map street $ filtered :: String
    numbers = intercalate "," . map number $ filtered :: String

tryParseSearch :: String -> Maybe Search
tryParseSearch zipcode
  | length words' == 2 = Just $ Search {searchState = searchState, searchPostal = searchPostal}
  | otherwise = Nothing
  where
    words' = words zipcode
    (searchState : searchPostal : _) = words zipcode

parseAddresses :: String -> [Address]
parseAddresses = map parseAddress . splitOn ","

parseAddress :: String -> Address
parseAddress line = Address {street = street, state = state, postal = postal, number = number}
  where
    words' = words line :: [String]
    number = head words'
    postal = last words'
    state = last . init $ words'
    street = unwords . tail . init . init $ words'
