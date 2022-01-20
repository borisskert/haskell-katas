module Codewars.Kata.SpinningSpec where

import Codewars.Kata.Spinning (spinWords)
import Test.Hspec

spec :: Spec
spec = do
  describe "spinWords" $ do
    it "should work for some examples" $ do
      spinWords "Hey fellow warriors" `shouldBe` "Hey wollef sroirraw"
      spinWords "Test" `shouldBe` "Test"
      spinWords "Example" `shouldBe` "elpmaxE"
      spinWords "Test Example" `shouldBe` "Test elpmaxE"
      spinWords "Just kidding there is still one more" `shouldBe` "Just gniddik ereht is llits one more"
