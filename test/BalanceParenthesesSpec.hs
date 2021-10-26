module BalanceParenthesesSpec (spec) where

import BalanceParentheses (fixParens)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    fixParens ")(" `shouldBe` "()()"
    fixParens "))))(()(" `shouldBe` "(((())))(()())"
