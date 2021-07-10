module PlanetsSpec where

import Test.Hspec
import Planets

spec :: Spec
spec = do
  describe "Planet ID Conversion" $ do
    it "some planets" $ do
      getPlanetName 2 `shouldBe` "Venus"
      getPlanetName 5 `shouldBe` "Jupiter"
      getPlanetName 3 `shouldBe` "Earth"

-- the following line is optional for 8.2
main = hspec spec
