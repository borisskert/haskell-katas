module UFC where

--  https://www.codewars.com/kata/582dafb611d576b745000b74/train/haskell

import Data.Char (toLower)

fighter :: String -> String
fighter name
  | map toLower name == "george saint pierre" = "I am not impressed by your performance."
  | map toLower name == "conor mcgregor"      = "I'd like to take this chance to apologize.. To absolutely NOBODY!"
  | otherwise                                 = error "unknown name"
