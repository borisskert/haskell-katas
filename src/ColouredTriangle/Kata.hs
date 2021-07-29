module ColouredTriangle.Kata where

-- https://www.codewars.com/kata/5a25ac6ac5e284cfbe000111/train/haskell


triangle :: String -> String
triangle [c] = [c]
triangle [c1, c2] = [nextColor c1 c2]
triangle cs = triangle (nextRow cs)


nextRow :: String -> String
nextRow [c1, c2] = [nextColor c1 c2]
nextRow (c1:c2:others) = [nextColor c1 c2] ++ nextRow (c2:others)


nextColor :: Char -> Char -> Char
nextColor 'G' 'G' = 'G'
nextColor 'R' 'R' = 'R'
nextColor 'B' 'B' = 'B'
nextColor 'B' 'G' = 'R'
nextColor 'G' 'B' = 'R'
nextColor 'R' 'G' = 'B'
nextColor 'G' 'R' = 'B'
nextColor 'B' 'R' = 'G'
nextColor 'R' 'B' = 'G'
nextColor c1 c2 = error ("Unknown combination" ++ [c1] ++ [c2])
