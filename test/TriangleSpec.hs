module TriangleSpec where

import Test.Hspec
import Triangle

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    cumulativeTriangle 2 `shouldBe` 5
    cumulativeTriangle 3 `shouldBe` 15
    cumulativeTriangle 4 `shouldBe` 34
    cumulativeTriangle 15 `shouldBe` 1695
    cumulativeTriangle 150 `shouldBe` 1687575
    cumulativeTriangle 100 `shouldBe` 500050
    cumulativeTriangle 500 `shouldBe` 62500250
    cumulativeTriangle 1000 `shouldBe` 500000500
    cumulativeTriangle 10000 `shouldBe` 500000005000

-- the following line is optional for 8.2
main = hspec spec
