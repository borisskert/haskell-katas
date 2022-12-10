module CodeWars.NexusSpec (spec) where

import CodeWars.Nexus (nexus)
import Test.Hspec

spec :: Spec
spec = do
  it "Example test" $ do
    nexus [(1, 3), (3, 3), (5, 3)] `shouldBe` 3
    nexus [(5, 30), (10, 25), (15, 20), (20, 15), (25, 10), (30, 5)] `shouldBe` 15
    nexus [(30, 5), (25, 10), (20, 15), (15, 20), (10, 25), (5, 30)] `shouldBe` 15
