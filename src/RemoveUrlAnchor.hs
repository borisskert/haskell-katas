module RemoveUrlAnchor where

--  https://www.codewars.com/kata/51f2b4448cadf20ed0000386/train/haskell

removeUrlAnchor :: String -> String
removeUrlAnchor = takeWhile (/= '#')
