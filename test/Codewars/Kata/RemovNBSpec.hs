module Codewars.Kata.RemovNBSpec where

import Codewars.Kata.RemovNB
import Test.Hspec

spec :: Spec
spec = do
  describe "removNb" $ do
    it "Some samples" $ do
      removNb 26 `shouldBe` [(15, 21), (21, 15)]
      removNb 100 `shouldBe` []
      removNb 101 `shouldBe` [(55, 91), (91, 55)]
      removNb 906 `shouldBe` [(505, 811), (615, 666), (637, 643), (643, 637), (666, 615), (811, 505)]
      removNb 1000003 `shouldBe` [(550320, 908566), (559756, 893250), (893250, 559756), (908566, 550320)]
