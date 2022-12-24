module Codewars.G964.Stockbroker (balanceStatements) where

-- https://www.codewars.com/kata/54de3257f565801d96001200/train/haskell

import Data.Either (lefts, rights)
import Data.List.Split (splitOn)
import Data.Maybe (fromJust, isJust)
import Text.Printf (printf)
import Text.Read (readMaybe)

balanceStatements :: String -> String
balanceStatements s = printf "Buy: %d Sell: %d%s" buys sells badFormatted
  where
    many = readMany s
    orders = rights many
    buys = round . sum . map price . filter isBuy $ orders :: Int
    sells = round . sum . map price . filter (not . isBuy) $ orders :: Int
    bad = filter (not . null) . lefts $ many
    badFormatted
      | null bad = ""
      | otherwise = printf "; Badly formed %d: %s" (length bad) . concatMap (++ " ;") $ bad

data OrderType = Sell | Buy deriving (Show)

data Order = Order Int Double OrderType deriving (Show)

price :: Order -> Double
price (Order a p _) = fromIntegral a * p

isBuy :: Order -> Bool
isBuy (Order _ _ Buy) = True
isBuy _ = False

readMany :: String -> [Either String Order]
readMany = map readOneEither . splitOn ", "

readOneEither :: String -> Either String Order
readOneEither cs
  | isJust maybeRead = Right . fromJust $ maybeRead
  | otherwise = Left cs
  where
    maybeRead = readOneMaybe cs

readOneMaybe :: String -> Maybe Order
readOneMaybe cs = mergeMaybes (\t (a, p) -> Order a p t) orderType . mergeMaybes (\p a -> (a, p)) price $ amount
  where
    split = splitOn " " cs
    (_ : amount' : price' : orderType' : _) = split
    amount = readMaybe amount' :: Maybe Int
    price
      | '.' `notElem` price' = Nothing
      | otherwise = readMaybe price' :: Maybe Double
    orderType
      | (< 4) . length $ split = Nothing
      | orderType' == "B" = Just Buy
      | orderType' == "S" = Just Sell
      | otherwise = Nothing

mergeMaybes :: (a -> b -> c) -> Maybe a -> Maybe b -> Maybe c
mergeMaybes f ma mb
  | isJust ma && isJust mb = Just . f (fromJust ma) $ fromJust mb
  | otherwise = Nothing
