module MinSumSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import MinSum

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "finds the min sum" $ do
        it "a few simple checks" $ do
          minSum [5,4,2,3] `shouldBe` 22
          minSum [12,6,10,26,3,24] `shouldBe` 342
          minSum [9,2,8,7,5,4,0,6] `shouldBe` 74
          minSum [1,2] `shouldBe` 2
          minSum [] `shouldBe` 0
 
-- the following line is optional for 8.2
main = hspec spec
