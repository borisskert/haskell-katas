module SmallestSpec where

import Smallest
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the minimums in original order " $ do
    firstNSmallest [1, 2, 3, 4, 5] 3 `shouldBe` [1, 2, 3]
    firstNSmallest [5, 4, 3, 2, 1] 3 `shouldBe` [3, 2, 1]
    firstNSmallest [1, 2, 3, 1, 2] 3 `shouldBe` [1, 2, 1]
    firstNSmallest [1, 2, 3, -4, 0] 3 `shouldBe` [1, -4, 0]
    firstNSmallest [1, 2, 3, 4, 5] 0 `shouldBe` []
    firstNSmallest [1, 2, 3, 4, 5] 5 `shouldBe` [1, 2, 3, 4, 5]
    firstNSmallest [1, 2, 3, 4, 2] 4 `shouldBe` [1, 2, 3, 2]
    firstNSmallest [2, 1, 2, 3, 4, 2] 2 `shouldBe` [2, 1]
    firstNSmallest [2, 1, 2, 3, 4, 2] 3 `shouldBe` [2, 1, 2]
    firstNSmallest [2, 1, 2, 3, 4, 2] 4 `shouldBe` [2, 1, 2, 2]

-- the following line is optional for 8.2
main = hspec spec
