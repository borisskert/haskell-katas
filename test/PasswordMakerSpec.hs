module PasswordMakerSpec where
import PasswordMaker

import Test.Hspec

spec = do
  describe "makePassword" $ do
    it "handles a couple of fixed tests" $ do
      makePassword "Give me liberty or give me death" `shouldBe` "Gml0gmd"
      makePassword "Keep Calm and Carry On" `shouldBe`  "KCaC0"
