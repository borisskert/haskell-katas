module SimpleIndices (solve) where

--  https://www.codewars.com/kata/5a24254fe1ce0ec2eb000078/train/haskell

solve :: String -> Int -> Maybe Int
solve str idx = (`find` idx) . drop idx $ str

find :: String -> Int -> Maybe Int
find ('(' : rest) index = findBalance rest 1 index
find _ _ = Nothing

findBalance :: String -> Int -> Int -> Maybe Int
findBalance _ 0 index = Just index
findBalance [] _ _ = Nothing
findBalance ('(' : rest) count index = findBalance rest (count + 1) (index + 1)
findBalance (')' : rest) count index = findBalance rest (count - 1) (index + 1)
findBalance (_ : rest) count index = findBalance rest count (index + 1)
