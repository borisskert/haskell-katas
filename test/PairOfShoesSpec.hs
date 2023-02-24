module PairOfShoesSpec (spec) where

import PairOfShoes (pairOfShoes)
import Test.HUnit (assertEqual)
import Test.Hspec (Expectation, Spec, it)

type Shoe = [Int]

spec :: Spec
spec = do
  it "example tests" $ do
    -- test False [[0, 20], [0, 21], [1, 19], [1, 22]]
    test True [[0, 21], [1, 23], [1, 21], [0, 23]]
    test False [[0, 23], [1, 23], [1, 23], [0, 23], [0, 23], [0, 23]]
    test False [[0, 21], [1, 23], [1, 21], [1, 23]]
    test True [[0, 23], [1, 21], [1, 23], [0, 21], [1, 22], [0, 22]]
    test True [[0, 23], [1, 21], [1, 23], [0, 21]]
    test True [[0, 23], [1, 21], [1, 23], [0, 21]]
    test False [[0, 23]]
    test True [[0, 23], [1, 23]]
    test False [[0, 23], [1, 22]]
    test True [[1, 38], [1, 9], [1, 22], [1, 24], [1, 29], [1, 95], [0, 22], [0, 38], [0, 24], [0, 95], [0, 29], [1, 45], [0, 45], [0, 9], [0, 22], [1, 22]]

test :: Bool -> [Shoe] -> Expectation
test expected shoes = assertEqual ("pairOfShoes " ++ show shoes) expected $ pairOfShoes shoes
