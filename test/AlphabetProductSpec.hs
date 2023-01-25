module AlphabetProductSpec (spec) where

import AlphabetProduct (alphabet)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests ( d < 21 )" $ do
    -- alphabet [2, 3, 4, 1, 12, 6, 2, 4] `shouldBe` 4
    -- alphabet [2, 6, 7, 3, 14, 35, 15, 5] `shouldBe` 7
    -- alphabet [20, 10, 6, 5, 4, 3, 2, 12] `shouldBe` 5
    alphabet [2, 6, 18, 3, 6, 7, 42, 14] `shouldBe` 7
    alphabet [7, 96, 8, 240, 12, 140, 20, 56] `shouldBe` 20
    alphabet [20, 30, 6, 7, 4, 42, 28, 5] `shouldBe` 7
