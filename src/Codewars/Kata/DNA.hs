module Codewars.Kata.DNA where
import Codewars.Kata.DNA.Types

-- https://www.codewars.com/kata/554e4a2f232cdd87d9000038/train/haskell

-- data Base = A | T | G | C
type DNA = [Base]

dnaStrand :: DNA -> DNA
dnaStrand = map compliment


compliment :: Base -> Base
compliment A = T
compliment T = A
compliment C = G
compliment G = C
