module SmallestPermutationSpec (spec) where

import SmallestPermutation (minPermutation)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    minPermutation (-20) `shouldBe` -20
    minPermutation (-32) `shouldBe` -23
    minPermutation 0 `shouldBe` 0
    minPermutation 10 `shouldBe` 10
    minPermutation 29394 `shouldBe` 23499
