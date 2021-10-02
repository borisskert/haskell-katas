module AlphabeticallyOrdered where
    
-- https://www.codewars.com/kata/5a8059b1fd577709860000f6/train/haskell

import Data.List (sort)


alphabetic :: String -> Bool
alphabetic xs = (== xs) . sort $ xs
