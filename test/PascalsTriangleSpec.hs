module PascalsTriangleSpec (spec) where

import PascalsTriangle (pascal)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    pascal 1 `shouldBe` [[1]]
    pascal 5 `shouldBe` [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
