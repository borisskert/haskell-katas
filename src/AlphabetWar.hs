module AlphabetWar where

--  https://www.codewars.com/kata/5938f5b606c3033f4700015a/train/haskell

alphabetWar :: String -> String
alphabetWar string
  | left > right = "Left side wins!"
  | left < right = "Right side wins!"
  | otherwise = "Let's fight again!"
  where
    bombed = bomb string
    left = sum . map leftPower $ bombed
    right = sum . map rightPower $ bombed

bomb :: String -> String
bomb [] = []
bomb "*" = []
bomb [c] = [c]
bomb ('*' : '*' : rest) = bomb ('*' : rest)
bomb ('*' : _ : rest) = bomb rest
bomb (_ : '*' : rest) = bomb ('*' : rest)
bomb (a : b : rest) = a : bomb (b : rest)

leftPower :: Char -> Int
leftPower 'w' = 4
leftPower 'p' = 3
leftPower 'b' = 2
leftPower 's' = 1
leftPower _ = 0

rightPower :: Char -> Int
rightPower 'm' = 4
rightPower 'q' = 3
rightPower 'd' = 2
rightPower 'z' = 1
rightPower _ = 0
