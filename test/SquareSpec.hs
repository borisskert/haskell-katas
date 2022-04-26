module SquareSpec where

import Test.Hspec
import Square (square)

spec :: Spec
spec = do
    describe "Testing" $ do
        it "Sample tests" $ do
            (square 2) `shouldBe` (4 :: Integer)
            (square 3) `shouldBe` (9 :: Integer)
            (square 0) `shouldBe` (0 :: Integer)
            (square 1) `shouldBe` (1 :: Integer)

main = hspec spec
