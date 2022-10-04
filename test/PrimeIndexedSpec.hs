module PrimeIndexedSpec where

import PrimeIndexed
import Test.Hspec

spec :: Spec
spec = do
  describe "Sum of prime-indexed elements" $ do
    it "Basic tests" $ do
      total [] `shouldBe` 0
      total [1, 2, 3, 4] `shouldBe` 7
      total [1, 2, 3, 4, 5, 6] `shouldBe` 13
      total [1, 2, 3, 4, 5, 6, 7, 8] `shouldBe` 21
      total [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11] `shouldBe` 21
      total [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13] `shouldBe` 33
      total [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15] `shouldBe` 47
