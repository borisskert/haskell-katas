module SlapheadSpec where

import Test.Hspec
import Test.QuickCheck
import Slaphead

spec :: Spec
spec = do
  describe "bald" $ do
    it "works on fixed cases" $ do
      bald "/---------"       `shouldBe` ("----------", "Unicorn!")
      bald "/-----/-"         `shouldBe` ("--------", "Homer!")
      bald "--/--/---/-/---"  `shouldBe` ("---------------", "Careless!")
