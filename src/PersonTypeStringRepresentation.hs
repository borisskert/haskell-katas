module PersonTypeStringRepresentation where

-- https://www.codewars.com/kata/57c9359540e302d32700013a/train/haskell

data Person = Person String String deriving (Eq)

instance Show Person where
  show (Person firstname lastname) = unwords [firstname, lastname]
