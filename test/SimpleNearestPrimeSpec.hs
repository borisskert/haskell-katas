module SimpleNearestPrimeSpec where

import SimpleNearestPrime
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Simple Nearest Prime" $ do
    it "Basic tests" $ do
      solve 3 `shouldBe` 3
      solve 11 `shouldBe` 11
      solve 4 `shouldBe` 3
      solve 110 `shouldBe` 109
      solve 1110 `shouldBe` 1109
      solve 3000 `shouldBe` 2999
      solve 35000 `shouldBe` 34981
      solve 350000 `shouldBe` 350003
      solve 10000000000 `shouldBe` 10000000019
