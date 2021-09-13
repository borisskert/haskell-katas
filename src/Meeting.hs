module Meeting where

-- https://www.codewars.com/kata/57f604a21bd4fe771b00009c/train/haskell

meeting :: String -> Either String Int
meeting xs
  | null emptyRooms = Left "None available!"
  | otherwise = Right (fst . head $ emptyRooms)
  where
    emptyRooms = filter ((== 'O') . snd) . zip [0..] $ xs :: [(Int, Char)]
