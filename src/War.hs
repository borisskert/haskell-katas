module War where

--  https://www.codewars.com/kata/59377c53e66267c8f6000027/train/haskell

alphabetWar :: String -> String
alphabetWar text = printText points
  where
    points = sumPoints $ map toPoints text :: Points


printText :: Points -> String
printText (left, right)
  | left > right = "Left side wins!"
  | left < right = "Right side wins!"
  | otherwise = "Let's fight again!"


toPoints :: Char -> Points
toPoints 'w' = (4, 0)
toPoints 'p' = (3, 0)
toPoints 'b' = (2, 0)
toPoints 's' = (1, 0)
toPoints 'm' = (0, 4)
toPoints 'q' = (0, 3)
toPoints 'd' = (0, 2)
toPoints 'z' = (0, 1)
toPoints _ = (0, 0)


-- Left, Right
type Points = (Int, Int)


sumPoints :: [Points] -> Points
sumPoints [] = (0, 0)
sumPoints [(left, right)] = (left, right)
sumPoints [(left1, right1), (left2, right2)] = (left1 + left2, right1 + right2)
sumPoints ((left1, right1):(left2, right2):others) = sumPoints ([(left1 + left2, right1 + right2)] ++ others)
