module Codewars.Kata.AlternateSpec (spec, main) where

import Codewars.Kata.Alternate (combine)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec = describe "combine" $ do
  it "returns [] for the empty list" $
    combine [] `shouldBe` ([] :: [()])

  it "returns the right result for some examples" $ do
    combine ["abc", "def", "ghi"] `shouldBe` "adgbehcfi"
    combine ["a", "bd", "c"] `shouldBe` "abcd"
    combine ["", "bd", "c"] `shouldBe` "bcd"
    combine [[1 .. 10], [1 .. 2]] `shouldBe` [1, 1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    combine [[1 .. 5], [6, 7], [8]] `shouldBe` [1, 6, 8, 2, 7, 3, 4, 5]

  it "returns [] for a list of empty lists" $
    property $ \(Small n) ->
      combine (replicate n []) `shouldBe` ([] :: [Double])

  it "returns a result with the correct length" $
    property $ \xs ->
      let l = sum . map length $ (xs :: [[()]])
       in combine xs `shouldSatisfy` (l ==) . length
