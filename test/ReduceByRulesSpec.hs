module ReduceByRulesSpec where

import ReduceByRules (reduceByRules)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $ do
    it "should work with [(+) (-)] rules" $
      reduceByRules [2.0, 2.0, 3.0, 4.0] [(+), (-)] `shouldBe` 5.0
    it "should work with [(+)] rules" $ do
      reduceByRules [2.0, 2.0, 2.0] [(+)] `shouldBe` 6.0
      reduceByRules [2.0, 2.0, 2.0, 2.0] [(+)] `shouldBe` 8.0
      reduceByRules [2.0, 2.0, 2.0, 2.0, 2.0] [(+)] `shouldBe` 10.0
      reduceByRules [2.0, 2.0, 2.0, 2.0, 2.0, 2.0] [(+)] `shouldBe` 12.0
    it "should work with [(+), (-), (*)] rules" $ do
      reduceByRules [2.0, 2.0, 2.0] [(+), (-), (*)] `shouldBe` 2.0
      reduceByRules [2.0, 2.0, 2.0, 2.0] [(+), (-), (*)] `shouldBe` 4.0
      reduceByRules [2.0, 2.0, 2.0, 2.0, 2.0] [(+), (-), (*)] `shouldBe` 6.0
      reduceByRules [2.0, 2.0, 2.0, 2.0, 2.0, 2.0] [(+), (-), (*)] `shouldBe` 4.0
