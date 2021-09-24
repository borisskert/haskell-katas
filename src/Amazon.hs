module Amazon where 

-- https://www.codewars.com/kata/55b95c76e08bd5eef100001e/train/haskell

countArara :: Int -> String
countArara x = unwords arara
  where
    adaks = replicate (x `div` 2) "adak" :: [String]

    anane :: [String]
    anane
      | x `mod` 2 == 1 = ["anane"]
      | otherwise = []

    arara = adaks ++ anane :: [String]


--interesting functions: `biconcatMap` and `divMod`
-- import Data.Bifoldable (biconcatMap)

-- countArara :: Int -> String
-- countArara = unwords . biconcatMap (`replicate` "adak") (`replicate` "anane") . (`divMod` 2)
