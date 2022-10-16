module AreaOfPolygonInsideCircleSpec (spec) where

import AreaOfPolygonInsideCircle (areaOfPolygonInsideCircle)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    areaOfPolygonInsideCircle 3 3 `shouldBe` 11.691
    areaOfPolygonInsideCircle 2 4 `shouldBe` 8
    areaOfPolygonInsideCircle 2.5 5 `shouldBe` 14.86
