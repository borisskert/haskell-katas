module PopShift where

-- https://www.codewars.com/kata/57cec34272f983e17800001e/train/haskell

popShift :: String -> (String, String, Maybe Char)
popShift [] = ([], [], Nothing)
popShift [c] = ([c], [], Nothing)
popShift str = go str
  where
    go :: String -> (String, String, Maybe Char)
    go [] = ([], [], Nothing)
    go [c] = ([], [], Just c)
    go (c : cs) = (\(a, b, m) -> (last cs : a, c : b, m)) next
      where
        next = go (init cs) :: (String, String, Maybe Char)
