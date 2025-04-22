module SortByLengthSpec (spec) where

import SortByLength (sortByLength)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    ["Telescopes", "Glasses", "Eyes", "Monocles"] ?-> ["Eyes", "Glasses", "Monocles", "Telescopes"]
    ["beg", "life", "i", "to"] ?-> ["i", "to", "beg", "life"]
    ["", "moderately", "brains", "pizza"] ?-> ["", "pizza", "brains", "moderately"]
    ["longer", "longest", "short"] ?-> ["short", "longer", "longest"]
    ["dog", "food", "a", "of"] ?-> ["a", "of", "dog", "food"]
    ["", "dictionary", "eloquent", "bees"] ?-> ["", "bees", "eloquent", "dictionary"]
    ["a longer sentence", "the longest sentence", "a short sentence"] ?-> ["a short sentence", "a longer sentence", "the longest sentence"]

(?->) :: [String] -> [String] -> Expectation
xs ?-> expected = do
  let message = "sortByLength " ++ show xs
      actual = sortByLength xs
  assertEqual message expected actual
