module EvenNums where 

-- https://www.codewars.com/kata/5a431c0de1ce0ec33a00000c/train/haskell

evenNumbers :: [Int] -> Int -> [Int]
evenNumbers xs n = reverse $ take n $ reverse $ filter even xs
