module CoefficientsOfTheQuadraticEquationSpec (spec) where

import CoefficientsOfTheQuadraticEquation (quadratic)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    quadratic   0    1  `shouldBe` ( 1, -1,   0 )
    quadratic   1    1  `shouldBe` ( 1, -2,   1 )
    quadratic (-4) (-9) `shouldBe` ( 1, 13,  36 )
    quadratic (-5) (-4) `shouldBe` ( 1,  9,  20 )
    quadratic   4  (-9) `shouldBe` ( 1,  5, -36 )
    quadratic   5  (-4) `shouldBe` ( 1, -1, -20 )
