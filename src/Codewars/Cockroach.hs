module Codewars.Cockroach where

-- https://www.codewars.com/kata/55fab1ffda3e2e44f00000c6/train/haskell

cockroachSpeed :: Double -> Integer
cockroachSpeed s = floor (s * 1000 * 100 / 3600)
