module Codewars.NameCombinerSpec where

import Codewars.NameCombiner (combineNames)
import Test.Hspec

spec :: Spec
spec = do
  describe "combine names" $ do
    it "example tests" $ do
      combineNames "James" "Stevens" `shouldBe` "James Stevens"
      combineNames "Davy" "Back" `shouldBe` "Davy Back"
      combineNames "Arthur" "Dent" `shouldBe` "Arthur Dent"
