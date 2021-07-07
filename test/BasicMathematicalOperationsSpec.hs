module BasicMathematicalOperationsSpec (spec) where

import Test.Hspec
import BasicMathematicalOperations (basicOp)

spec :: Spec
spec = do
  it "example tests" $ do
    basicOp '+' 4 7 `shouldBe` 11
    basicOp '-' 15 18 `shouldBe` -3
    basicOp '*' 5 5 `shouldBe` 25
    basicOp '/' 49 7 `shouldBe` 7
    basicOp '/' 50 7 `shouldBe` 7
