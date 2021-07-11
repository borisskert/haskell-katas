module DiffSpec (spec) where

import Test.Hspec
import Diff

spec :: Spec
spec = do
  it "works on fixed cases" $ do
    sumOfDifferences [1, 2, 10] `shouldBe` Just 9
    sumOfDifferences [-3, -2, -1] `shouldBe` Just 2
    sumOfDifferences [1, 1, 1, 1, 1] `shouldBe` Just 0
    sumOfDifferences [-17, 17] `shouldBe` Just 34
    sumOfDifferences [] `shouldBe` Nothing
    sumOfDifferences [0] `shouldBe` Nothing
    sumOfDifferences [-1] `shouldBe` Nothing
    sumOfDifferences [1] `shouldBe` Nothing
