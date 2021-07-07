module IsDivisibleSpec (spec) where

import Test.Hspec
import IsDivisible (isDivisible)

spec :: Spec
spec = do
  it "Basic tests" $ do
    isDivisible 3 3 4 `shouldBe` False
    isDivisible 12 3 4 `shouldBe` True
    isDivisible 8 3 4 `shouldBe` False
    isDivisible 48 3 4 `shouldBe` True
    isDivisible 100 5 10 `shouldBe` True
    isDivisible 100 5 3 `shouldBe` False
    isDivisible 4 4 2 `shouldBe` True
    isDivisible 5 2 3 `shouldBe` False
    isDivisible 17 17 17 `shouldBe` True
    isDivisible 17 1 17 `shouldBe` True
