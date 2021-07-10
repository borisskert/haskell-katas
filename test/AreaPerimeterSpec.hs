module AreaPerimeterSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import AreaPerimeter

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "area or perimeter " $ do
        it "fixed cases" $ do
            areaOrPerimeter 3 3 `shouldBe` 9
            areaOrPerimeter 5 5 `shouldBe` 25
            areaOrPerimeter 3 4 `shouldBe` 14
            areaOrPerimeter 4 5 `shouldBe` 18
        
-- the following line is optional for 8.2
main = hspec spec
