module Codewars.Exercise.Compare.Version where

import Data.List (intercalate)
import Test.QuickCheck (Arbitrary (arbitrary), Gen, chooseInt, listOf1)

newtype Version = Version String deriving (Show)

instance Arbitrary Version where
  arbitrary = fmap (Version . intercalate "." . map show) . listOf1 $ version
    where
      version = chooseInt (1, maxBound) :: Gen Int
