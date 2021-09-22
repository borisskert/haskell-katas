module DroneFlyBy.TestsSpec (spec) where

import Test.Hspec
import DroneFlyBy.Kata (flyBy)

spec :: Spec
spec = do
  describe "Drone Fly-By" $ do
    it "Example Tests" $ do
      flyBy "xxxxxx" "====T" `shouldBe` "ooooox"
      flyBy "xxxxxxxxx" "==T" `shouldBe` "oooxxxxxx"
      flyBy "xxxxxxxxxxxxxxx" "=========T" `shouldBe` "ooooooooooxxxxx"
      flyBy "x" "=T" `shouldBe` "o"

