module Haskell.SylarDoom.MiniBitMoveSpec where

import Haskell.SylarDoom.MiniBitMove
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $ do
    it
      "Flips all bits in an array"
      (interpreter "10" "1100101" `shouldBe` "0011010")
    it
      "Flips every second bit in an array"
      (interpreter "100" "1111111111" `shouldBe` "0101010101")
