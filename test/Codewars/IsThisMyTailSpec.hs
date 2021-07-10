module Codewars.IsThisMyTailSpec where

import Test.Hspec
import Codewars.IsThisMyTail (correctTail)


spec :: Spec
spec = do
  describe "correctTail" $ do
    it "basic tests" $ do
      correctTail "Fox" 'x' `shouldBe` True
      correctTail "Rhino" 'o' `shouldBe` True
      correctTail "Meerkat" 't' `shouldBe` True
