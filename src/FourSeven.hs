module FourSeven (fourSeven) where

-- https://www.codewars.com/kata/5ff50f64c0afc50008861bf0/train/haskell

fourSeven :: Int -> Maybe Int
fourSeven 7 = Just 4
fourSeven 4 = Just 7
fourSeven _ = Nothing
