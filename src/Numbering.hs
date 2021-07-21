module Numbering where

--  https://www.codewars.com/kata/54bf85e3d5b56c7a05000cf9/train/haskell

number :: [String] -> [String]
number = map toString . toLines


-- Index, Content
type Line = (Int, String)


toLines :: [String] -> [Line]
toLines = zip [1..]


toString :: Line -> String
toString (index, content) = show index ++ ": " ++ content
