module Codewars.G964.Rainfall where

--  https://www.codewars.com/kata/56a32dd6e4f4748cc3000006/train/haskell

import Data.List.Split (splitOn)
import Data.Map (Map, fromList, lookup)
import Prelude hiding (lookup)

mean :: String -> String -> Double
mean twn = maybe (-1.0) average . lookup twn . parseLines

variance :: String -> String -> Double
variance twn = maybe (-1.0) variance' . lookup twn . parseLines

average :: [Double] -> Double
average xs = (/ amount) . sum $ xs
  where
    amount = fromIntegral . length $ xs

variance' :: [Double] -> Double
variance' xs = (/ amount) . sum . map ((^ 2) . (avg' -)) $ xs
  where
    avg' = average xs
    amount = fromIntegral . length $ xs

parseLines :: String -> Map String [Double]
parseLines = fromList . map parseLine . lines
  where
    parseLine :: String -> (String, [Double])
    parseLine line = (head split, parseRecords . last $ split)
      where
        split = splitOn ":" line

    parseRecords :: String -> [Double]
    parseRecords = map parseRecord . splitOn ","

    parseRecord :: String -> Double
    parseRecord = read . last . splitOn " "
