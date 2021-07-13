module Codewars.Kata.Plural.Types where

data Grammar = Singular | Plural

instance Show Grammar where
  show Singular = "Singular"
  show Plural = "Plural"

instance Eq Grammar where
  (==) Singular Singular = True
  (==) Plural Plural = True
  (==) Singular Plural = False
  (==) Plural Singular = False
