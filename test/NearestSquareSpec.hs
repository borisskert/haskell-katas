module NearestSquareSpec where

import Test.Hspec
import NearestSquare

spec :: Spec
spec = do
    describe "finds the nearest square" $ do
        it "few basic checks" $ do
            nearestSquare 0 `shouldBe` 0
            nearestSquare 2 `shouldBe` 1
            nearestSquare 8 `shouldBe` 9
