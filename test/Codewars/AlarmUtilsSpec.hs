module Codewars.AlarmUtilsSpec where

import Codewars.AlarmUtils (setAlarm)
import Test.Hspec

spec :: Spec
spec = do
  describe "setAlarm" $ do
    it "returns correct result for all input values" $ do
      setAlarm False False `shouldBe` False
      setAlarm True False `shouldBe` True
      setAlarm False True `shouldBe` False
      setAlarm True True `shouldBe` False
