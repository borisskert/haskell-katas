module ValidParenthesesSpec (spec) where

import Test.HUnit (assertEqual)
import Test.Hspec
import ValidParentheses (validParentheses)

spec :: Spec
spec = do
  it "Should return True for valid parentheses" $ do
    assertEqual "validParentheses \"()\"" True $ validParentheses "()"
    assertEqual "validParentheses \"((()))\"" True $ validParentheses "((()))"
    assertEqual "validParentheses \"()()()\"" True $ validParentheses "()()()"
    assertEqual "validParentheses \"(()())()\"" True $ validParentheses "(()())()"
    assertEqual "validParentheses \"()(())((()))(())()\"" True $ validParentheses "()(())((()))(())()"

  it "Should return False for invalid parentheses" $ do
    assertEqual "validParentheses \")(\"" False $ validParentheses ")("
    assertEqual "validParentheses \"()()(\"" False $ validParentheses "()()("
    assertEqual "validParentheses \"((())\"" False $ validParentheses "((())"
    assertEqual "validParentheses \"())(()\"" False $ validParentheses "())(()"
    assertEqual "validParentheses \")()\"" False $ validParentheses ")()"
    assertEqual "validParentheses \")\"" False $ validParentheses ")"

  it "Should return True for empty strings" $ do
    assertEqual "validParentheses \"\"" True $ validParentheses ""
