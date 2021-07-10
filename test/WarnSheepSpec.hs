module WarnSheepSpec (spec) where

import Test.Hspec
import WarnSheep (warnTheSheep)

spec :: Spec
spec = do
  it "basic tests" $ do
    warnTheSheep ["sheep", "sheep", "sheep", "sheep", "sheep", "wolf", "sheep", "sheep"] `shouldBe` "Oi! Sheep number 2! You are about to be eaten by a wolf!"
    warnTheSheep ["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"] `shouldBe` "Oi! Sheep number 5! You are about to be eaten by a wolf!"
    warnTheSheep ["wolf", "sheep", "sheep", "sheep", "sheep", "sheep", "sheep"] `shouldBe` "Oi! Sheep number 6! You are about to be eaten by a wolf!"
    warnTheSheep ["sheep", "wolf", "sheep"] `shouldBe` "Oi! Sheep number 1! You are about to be eaten by a wolf!"
    warnTheSheep ["sheep", "sheep", "wolf"] `shouldBe` "Pls go away and stop eating my sheep"
