module SimpleMatches where 

-- https://www.codewars.com/kata/5bc052f93f43de7054000188/train/haskell

import Data.List.Split (splitOn)
import Control.Arrow ((&&&))
import Data.List (isInfixOf)
import Text.Regex.Posix ((=~))


solve :: String -> String -> Bool
solve a b
  | "*" `isInfixOf` a = b =~ regex
  | otherwise = a == b
  where
    startEnd = (head &&& last) . splitOn "*" $ a :: (String, String)
    regex = "^" ++ fst startEnd ++ ".*" ++ snd startEnd ++ "$" :: String


-- again what learned:
-- use `traceShow` function of Debug.Trace module to print input values:

-- import Debug.Trace
-- solve :: String -> String -> Bool
-- solve a b = traceShow(a,b) $
--   matches a b
