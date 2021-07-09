module TheFeastOfManyBeastsSpec where

import TheFeastOfManyBeasts (feast)
import Test.Hspec

spec =
  describe "feast" $ do
    it "should correctly return True" $ do
      feast "great blue heron" "garlic naan" `shouldBe` True
      feast "chickadee" "chocolate cake" `shouldBe` True
    it "should correctly return False" $ do
      feast "brown bear" "bear claw" `shouldBe` False
