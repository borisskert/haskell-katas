module HotelSpec where

import Test.Hspec
import Hotel

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    groupSize 1  6 `shouldBe` 3
    groupSize 3  10 `shouldBe` 5
    groupSize 3  14 `shouldBe` 6
    groupSize 10  1000 `shouldBe` 46
    groupSize 1  1000 `shouldBe` 45
    groupSize 5  4 `shouldBe` 5
    groupSize 5  7 `shouldBe` 6
    groupSize 10000  1000000000000000 `shouldBe` 44721361
    groupSize 2  20000000000000 `shouldBe` 6324555
    groupSize 10  900000000000000000 `shouldBe` 1341640786
    groupSize 34545  565 `shouldBe` 34545
    groupSize 234234  6577 `shouldBe` 234234
    groupSize 10  10 `shouldBe` 10

  it "nearestSquare" $ do
    nearestSquare 0 `shouldBe` 0
    nearestSquare 1 `shouldBe` 1
    nearestSquare 2 `shouldBe` 1
    nearestSquare 3 `shouldBe` 2
    nearestSquare 4 `shouldBe` 2
    nearestSquare 6 `shouldBe` 2
    nearestSquare 7 `shouldBe` 3
    nearestSquare 8 `shouldBe` 3
    nearestSquare 9 `shouldBe` 3
    nearestSquare 10 `shouldBe` 3
    nearestSquare 11 `shouldBe` 3
    nearestSquare 12 `shouldBe` 3
    nearestSquare 13 `shouldBe` 4
    nearestSquare 14 `shouldBe` 4
    nearestSquare 15 `shouldBe` 4
    nearestSquare 16 `shouldBe` 4

  it "log2" $ do
    log2 0 `shouldBe` 0
    log2 1 `shouldBe` 1
    log2 2 `shouldBe` 2
    log2 3 `shouldBe` 2
    log2 4 `shouldBe` 3
    log2 5 `shouldBe` 3
    log2 6 `shouldBe` 3
    log2 7 `shouldBe` 3
    log2 8 `shouldBe` 4
    log2 9 `shouldBe` 4
    log2 10 `shouldBe` 4
    log2 11 `shouldBe` 4
    log2 12 `shouldBe` 4
    log2 13 `shouldBe` 4
    log2 14 `shouldBe` 4
    log2 15 `shouldBe` 4
    log2 16 `shouldBe` 5
    
-- the following line is optional for 8.2
main = hspec spec
