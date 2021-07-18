module FriendOrFoeSpec where

import Test.Hspec
import FriendOrFoe

spec :: Spec
spec = do
    describe "basic" $ do
        it "basic tests" $ do
            friend ["Ryan", "Kieran", "Mark"] `shouldBe` ["Ryan", "Mark"]
            friend ["This", "IS", "enough", "TEst", "CaSe"] `shouldBe` ["This", "TEst", "CaSe"]
