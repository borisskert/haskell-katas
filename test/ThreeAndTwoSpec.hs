module ThreeAndTwoSpec where

import Test.HUnit
import Test.Hspec
import ThreeAndTwo (checkThreeAndTwo)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Works on the examples" $ do
      assertEqual "\"aaabb\"" True $ checkThreeAndTwo "aaabb"
      assertEqual "\"abcbc\"" False $ checkThreeAndTwo "abcbc"
      assertEqual "\"aaaaa\"" False $ checkThreeAndTwo "aaaaa"
