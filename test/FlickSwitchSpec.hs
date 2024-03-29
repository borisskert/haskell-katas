module FlickSwitchSpec (spec) where

import FlickSwitch (flickSwitch)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    flickSwitch ["codewars", "flick", "code", "wars"] `shouldBe` [True, False, False, False]
    flickSwitch ["flick", "chocolate", "adventure", "sunshine"] `shouldBe` [False, False, False, False]
    flickSwitch ["bicycle", "jarmony", "flick", "sheep", "flick"] `shouldBe` [True, True, False, False, True]
    flickSwitch ["flick", "flick", "flick", "flick", "flick"] `shouldBe` [False, True, False, True, False]
    flickSwitch ["john, smith, susan", "flick"] `shouldBe` [True, False]
    flickSwitch ["bicycle"] `shouldBe` [True]
    flickSwitch ["flick"] `shouldBe` [False]
    flickSwitch [] `shouldBe` []
