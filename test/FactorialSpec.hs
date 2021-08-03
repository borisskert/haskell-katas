module FactorialSpec (spec) where

import Factorial
import Test.Hspec

spec :: Spec
spec = do
  it "basic tests" $ do
    factorial 0 `shouldBe` 1
    factorial 1 `shouldBe` 1
    factorial 2 `shouldBe` 2
    factorial 3 `shouldBe` 6
    factorial 4 `shouldBe` 24
    factorial 5 `shouldBe` 120
    factorial 6 `shouldBe` 720
    factorial 7 `shouldBe` 5040
    factorial 10 `shouldBe` 3628800
