module AddBinarySpec where

import Test.Hspec

import AddBinary (addBinary)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    describe "should work for some examples" $ do
      fixedTest 1 1 "10"
      fixedTest 0 1 "1"
      fixedTest 1 0 "1"
      fixedTest 2 2 "100"
      fixedTest 51 12 "111111"

fixedTest :: Int -> Int -> String -> Spec
fixedTest a b expected =
  it (unwords ["addBinary",show a,show b]) $
    addBinary a b `shouldBe` expected
