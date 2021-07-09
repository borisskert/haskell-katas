module DnaToRna where 

-- https://www.codewars.com/kata/5556282156230d0e5e000089/train/haskell

dnaToRna :: String -> String 
dnaToRna = map toRna


toRna :: Char -> Char
toRna 'T' = 'U'
toRna dna = dna
