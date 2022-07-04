module ToSquareRootOrNotToSquareRootSpec (spec) where

import ToSquareRootOrNotToSquareRoot (squareOrSquareRoot)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    squareOrSquareRoot [ 4, 3, 9, 7, 2, 1 ] `shouldBe` [ 2, 9, 3, 49, 4, 1 ]
    squareOrSquareRoot [ 100, 101, 5, 5, 1, 1 ] `shouldBe` [ 10, 10201, 25, 25, 1, 1 ]
    squareOrSquareRoot [ 1, 2, 3, 4, 5, 6 ] `shouldBe` [ 1, 4, 9, 2, 25, 36 ]
