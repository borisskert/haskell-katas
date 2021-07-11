module DivisibleSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Divisible

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "Basic checks" $ do
        it "a few cases" $ do
            go 2 4 `shouldBe` False
            go 4 2 `shouldBe` True

-- the following line is optional for 8.2
main = hspec spec
