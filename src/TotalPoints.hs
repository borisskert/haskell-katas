module TotalPoints where

-- https://www.codewars.com/kata/5bb904724c47249b10000131

points :: [String] -> Int
points = sum . map toPoints


toPoints :: String -> Int
toPoints "4:4" = 1
toPoints "4:3" = 3
toPoints "4:2" = 3
toPoints "4:1" = 3
toPoints "4:0" = 3
toPoints "3:4" = 0
toPoints "3:3" = 1
toPoints "3:2" = 3
toPoints "3:1" = 3
toPoints "3:0" = 3
toPoints "2:4" = 0
toPoints "2:3" = 0
toPoints "2:2" = 1
toPoints "2:1" = 3
toPoints "2:0" = 3
toPoints "1:4" = 0
toPoints "1:3" = 0
toPoints "1:2" = 0
toPoints "1:1" = 1
toPoints "1:0" = 3
toPoints "0:4" = 0
toPoints "0:3" = 0
toPoints "0:2" = 0
toPoints "0:1" = 0
toPoints "0:0" = 1
toPoints _ = error "invalid result"
