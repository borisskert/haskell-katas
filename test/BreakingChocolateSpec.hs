module BreakingChocolateSpec (spec, main) where

import Test.Hspec
import BreakingChocolate (breakChocolate)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "BreakingChocolate" $ do
        it "calculates the correct number of breaks" $ do
            breakChocolate 5 5 `shouldBe` 24
            breakChocolate 1 1 `shouldBe` 0
