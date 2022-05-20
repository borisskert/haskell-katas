module MultiplicationTableSpec where

import Test.Hspec
import MultiplicationTable (multiplicationTable)

spec :: Spec
spec = do
    describe "Basic Tests" $ do
        it "Should pass basic tests" $ do
            multiplicationTable 0 `shouldBe` []
            multiplicationTable 1 `shouldBe` [[1]]
            multiplicationTable 2 `shouldBe` [[1,2],[2,4]]
            multiplicationTable 3 `shouldBe` [[1,2,3],[2,4,6],[3,6,9]]
