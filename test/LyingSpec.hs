module LyingSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Lying
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the truth, nothing but the truth" $ do
    isJohnLying (3, 3) 6 `shouldBe` True
    isJohnLying (4, 5) 10 `shouldBe` False
    isJohnLying (-5, -5) 10 `shouldBe` True
    isJohnLying (-5, -5) 8 `shouldBe` False
    isJohnLying (10, -10) 10 `shouldBe` False
    isJohnLying (7308706, -397465) 470935785 `shouldBe` True
    isJohnLying (3860095,4013113) 442490052 `shouldBe` True
    isJohnLying (-8664388,1730332) 162196434 `shouldBe` True

-- the following line is optional for 8.2
main = hspec spec
