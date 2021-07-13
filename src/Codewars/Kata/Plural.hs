module Codewars.Kata.Plural where
import Codewars.Kata.Plural.Types

-- https://www.codewars.com/kata/52ceafd1f235ce81aa00073a/solutions/haskell

plural :: (Num a, Eq a) => a -> Grammar
plural 1 = Singular
plural _ = Plural
