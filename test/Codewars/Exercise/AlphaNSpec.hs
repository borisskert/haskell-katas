module Codewars.Exercise.AlphaNSpec (spec, main) where

import Codewars.Exercise.AlphaN (sortIt)
import Data.List (sort)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec = do
  describe "sortIt" $ do
    it "should work for some examples" $ do
      sortIt ["bill", "bell", "ball", "bull"] 2 `shouldBe` words "ball bell bill bull"
      sortIt ["cat", "dog", "eel", "bee"] 3 `shouldBe` words "bee dog eel cat"
      sortIt ["udi", "z", "pg"] 1 `shouldBe` words "pg udi z"
      sortIt
        ["cvisfdwgbks", "yugvmuxjo", "db", "oer", "vnqsohw", "ofkeecrcmvau", "vutes", "c", "jsxef", "vtf", "uvvfwiwuzqzdquxbkc", "dijsjdsfngmla"]
        1
        `shouldBe` ["c", "cvisfdwgbks", "db", "dijsjdsfngmla", "jsxef", "oer", "ofkeecrcmvau", "uvvfwiwuzqzdquxbkc", "vnqsohw", "vtf", "vutes", "yugvmuxjo"]

    it "should not add or remove words" $
      property $ \(Positive n) ->
        forAll (fmap (filter ((n <) . length)) $ listOf $ listOf1 $ elements ['a' .. 'z']) $ \words ->
          sort (sortIt words n) `shouldBe` sort words
