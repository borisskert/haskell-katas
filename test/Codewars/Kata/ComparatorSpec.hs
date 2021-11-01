module Codewars.Kata.ComparatorSpec (spec) where

import Codewars.Kata.Comparator (matchList)
-- import Codewars.Kata.Comparator.Unique (unique)
import Test.Hspec
import Test.QuickCheck

spec = do
  it "works for some examples" $ do
    matchList ["Erlang", "Javascript"]  ["Go", "C++", "Haskell"] `shouldBe`  0
    matchList ["Haskell", "Javascript"] ["Go", "C++", "Haskell"] `shouldBe`  1

--   it "works if both lists are the same" $ property $ 
--     forAll unique $ \xs ->
--       matchList xs xs `shouldBe` length (xs :: [Int])
