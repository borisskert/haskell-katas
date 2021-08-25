module FillTheHDD (save) where

-- https://www.codewars.com/kata/5d49c93d089c6e000ff8428c/train/haskell

save :: (Num a,Ord a) => [a] -> a -> Int
save = saveFiles 0


saveFiles :: (Num a,Ord a) => Int -> [a] -> a -> Int
saveFiles count [] _ = count
saveFiles count files size
  | fileToSave > size = count
  | otherwise = saveFiles (count + 1) (tail files) (size - fileToSave)
  where
    fileToSave = head files
