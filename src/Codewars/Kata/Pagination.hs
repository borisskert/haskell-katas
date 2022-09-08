module Codewars.Kata.Pagination
  ( itemCount,
    pageCount,
    pageItemCount,
    pageIndex,
  )
where

-- https://www.codewars.com/kata/515bb423de843ea99400000a/train/haskell

type Collection a = [a]

type ItemsPerPage = Int

itemCount :: Collection a -> Int
itemCount = length

pageCount :: Collection a -> ItemsPerPage -> Int
pageCount xs n = count
  where
    (count, _) = xs `pageDivMod` n

pageItemCount :: Collection a -> ItemsPerPage -> Int -> Maybe Int
pageItemCount xs n page
  | page < 0 || page >= pages = Nothing
  | leftover == 0 = Just n
  | page == pages - 1 = Just leftover
  | otherwise = Just n
  where
    (pages, leftover) = xs `pageDivMod` n

pageIndex :: Collection a -> ItemsPerPage -> Int -> Maybe Int
pageIndex xs n item
  | null xs || item >= items = Nothing
  | item < 0 = Just 0
  | otherwise = Just page
  where
    items = itemCount xs
    page = item `div` n

pageDivMod :: Collection a -> ItemsPerPage -> (Int, Int)
pageDivMod xs n
  | rest == 0 = (count, rest)
  | otherwise = (count + 1, rest)
  where
    items = itemCount xs
    (count, rest) = items `divMod` n
