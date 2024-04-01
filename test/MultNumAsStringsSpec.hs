module MultNumAsStringsSpec where

import MultNumAsStrings
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "your_multiply_function" $ do
    it "should_work_for_some_simple_fixed_tests" $ do
      multiply "2" "3" `shouldBe` "6"
      multiply "30" "69" `shouldBe` "2070"
      multiply "11" "85" `shouldBe` "935"
