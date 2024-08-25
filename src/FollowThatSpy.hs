module FollowThatSpy (findRoutes) where

-- https://www.codewars.com/kata/5899a4b1a6648906fe000113/train/haskell

import Data.List (intercalate)
import qualified Data.Map as Map
import Data.Maybe (fromJust, isNothing)

findRoutes :: [(String, String)] -> String
findRoutes routes = intercalate ", " . destinations $ start
  where
    routesAsMap = Map.fromList routes

    start :: String
    start = head . filter (`notElem` values) $ keys
      where
        keys = Map.keys routesAsMap
        values = Map.elems routesAsMap

    destinations :: String -> [String]
    destinations destination
      | isNothing next = [destination]
      | otherwise = destination : destinations (fromJust next)
      where
        next = Map.lookup destination routesAsMap
