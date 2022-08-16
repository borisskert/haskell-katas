module Codewars.Kata.TriangleNumbersSpec (spec) where

import Codewars.Kata.TriangleNumbers (isTriangleNumber)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    isTriangleNumber 125250 `shouldBe` True
    isTriangleNumber 3126250 `shouldBe` True
    isTriangleNumber 20069 `shouldBe` False
    isTriangleNumber 6387874020069 `shouldBe` False

-- x * (x + 1) / 2 = y ; x = ?
-- x * (x + 1) / 2 - n = 0
-- 0.5 * x^2 + 0.5x -n = 0
-- x = -b + sqrt(b^2 - 4ac)/2a
-- x = -0.5 + sqrt(0.25 + 2n)
