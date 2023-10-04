module ValidParentheses (validParentheses) where

-- https://www.codewars.com/kata/6411b91a5e71b915d237332d/train/haskell

validParentheses :: String -> Bool
validParentheses xs = count xs 0

count :: String -> Int -> Bool
count [] 0 = True
count [] _ = False
count (')' : xs) counter
  | counter <= 0 = False
  | otherwise = count xs (counter - 1)
count ('(' : xs) counter = count xs (counter + 1)
count (_ : xs) counter = count xs counter
