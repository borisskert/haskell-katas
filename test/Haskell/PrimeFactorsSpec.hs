module Haskell.PrimeFactorsSpec (spec) where

import Haskell.PrimeFactors (primeFactors)
import Test.Hspec

spec :: Spec
spec = do
  describe "Prime factors" $ do
    it "Example tests" $ do
      primeFactors  1 `shouldBe` []
      primeFactors  3 `shouldBe` [3]
      primeFactors  8 `shouldBe` [2,2,2]
      primeFactors  9 `shouldBe` [3,3]
      primeFactors 12 `shouldBe` [2,2,3]
