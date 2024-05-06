module CantorsiagonalsSpec (spec) where

import CantorsDiagonals (cantor)
import Test.HUnit (assertEqual)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "description examples" $ do
    cantor
      [ [0, 0, 0],
        [1, 1, 1],
        [0, 1, 0]
      ]
      `shouldBe` [1, 0, 1]
    cantor
      [ [1, 0, 0],
        [0, 1, 0],
        [0, 0, 1]
      ]
      `shouldBe` [0, 0, 0]
  it "more example tests" $ do
    cantor
      [ [0, 0],
        [1, 1]
      ]
      `shouldBe` [1, 0]
    cantor
      [ [1, 1],
        [0, 0]
      ]
      `shouldBe` [0, 1]
    cantor
      [ [0, 1],
        [1, 0]
      ]
      `shouldBe` [1, 1]
  it "property tests" $ do
    forAll genCantor $ \xss -> do
      let actual = cantor xss
      assertEqual ("your output ( " ++ show actual ++ " ) should contain only 1s and 0s") True $
        all (`elem` [0, 1]) actual
      assertEqual ("your output ( " ++ show actual ++ " ) should have an element for every row in the input") True $
        length actual >= length xss
      assertEqual ("your output ( " ++ show actual ++ " ) should be different from every row in the input") False $
        any (actual ==) xss

genCantor :: Gen [[Word]]
genCantor = do
  NonNegative l <- arbitrary
  vectorOf l $ vectorOf l $ elements [0, 1]
