module MultipleOfIdx where 

--  https://www.codewars.com/kata/5a34b80155519e1a00000009/train/haskell

multipleOfIndex :: [Int] -> [Int]
multipleOfIndex = multipleOfIndexRecursive 0


multipleOfIndexRecursive :: Int -> [Int] -> [Int]
multipleOfIndexRecursive _ [] = []
multipleOfIndexRecursive index (first:others)
  | index == 0             = multipleOfIndexRecursive 1 others
  | first `mod` index == 0 = [first] ++ multipleOfIndexRecursive (index + 1) others
  | otherwise              = multipleOfIndexRecursive (index + 1) others
