module SquareAreaSpec (spec) where

import Test.Hspec
import SquareArea

spec :: Spec
spec = do
  it "basic tests" $ do
    squareArea 2 `shouldBe` 1.62
    squareArea 0 `shouldBe` 0.0
    squareArea 14.05 `shouldBe` 80.0
    squareArea 1 `shouldBe` 0.41
