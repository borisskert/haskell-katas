module ClockyMcClockFaceSpec where

import Kata.ClockyMcClockFace (whatTimeIsIt)
import Test.Hspec

spec :: Spec
spec = do
  describe "Clocky McClockFace" $ do
    it "Example Tests" $ do
      whatTimeIsIt 255.38484 `shouldBe` "08:30"
      whatTimeIsIt 90 `shouldBe` "03:00"
      whatTimeIsIt 180 `shouldBe` "06:00"
      whatTimeIsIt 270 `shouldBe` "09:00"
      whatTimeIsIt 360 `shouldBe` "12:00"
      whatTimeIsIt 0 `shouldBe` "12:00"
      whatTimeIsIt 40.0 `shouldBe` "01:20"
