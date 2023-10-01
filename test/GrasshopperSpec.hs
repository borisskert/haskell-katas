module GrasshopperSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Grasshopper
import Test.Hspec

spec :: Spec
spec = do
  it "Basic cases" $ do
    checkAlive 5 `shouldBe` True
    checkAlive (0) `shouldBe` False
