module Kata.WhoseMoveSpec where

import Kata.WhoseMove (whoseMove)
import Test.Hspec

spec :: Spec
spec = do
    describe "Whose move?" $ do
      it "example tests" $ do
        whoseMove "black" False `shouldBe` "white"
        whoseMove "white" True  `shouldBe` "white"
