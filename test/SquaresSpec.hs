module SquaresSpec where

import Squares (findSquares)
import Test.Hspec

spec :: Spec
spec = do
  it "finds the squares" $ do
    findSquares 3 2 `shouldBe` 8
    findSquares 4 3 `shouldBe` 20
    findSquares 11 4 `shouldBe` 100
    findSquares 8 5 `shouldBe` 100

-- the following line is optional for 8.2
main = hspec spec
