module Codewars.Kata.Bookseller where

import Codewars.Kata.Bookseller.Types

-- https://www.codewars.com/kata/54dc6f5a224c26032800005c/train/haskell

stocklist :: [Stock] -> [Char] -> [(Char, Int)]
stocklist _ [] = []
stocklist [] _ = []
stocklist stocks (c : cs) = count c : stocklist stocks cs
  where
    foundStocks = searchStocks c :: [Stock]

    count :: Char -> (Char, Int)
    count category = (category, sum . map quantity $ foundStocks)

    searchStocks :: Char -> [Stock]
    searchStocks category = filter (\(Stock (stockCategory : _) _) -> stockCategory == category) stocks

    quantity :: Stock -> Int
    quantity (Stock _ q) = q
