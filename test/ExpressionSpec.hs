module ExpressionSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Expression

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "finds the max" $ do
        it "some simple tests" $ do
            (expression 1 1 1) `shouldBe` (3)
            (expression 2 3 2) `shouldBe` (12)
            (expression 1 2 3) `shouldBe` (9)
            (expression 4 1 1) `shouldBe` (8)
        

-- the following line is optional for 8.2
main = hspec spec
