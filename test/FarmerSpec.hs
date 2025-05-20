module FarmerSpec where

import Test.Hspec
import Test.HUnit
import Farmer (getAnimalsCount)
import Preloaded

spec :: Spec
spec = do
  it "Fixed Tests" $ do
    assertEqual "getAnimalsCount 34 11 6" (AnimalCount 3 5 3) $
      getAnimalsCount 34 11 6
    assertEqual "getAnimalsCount 154 42 10" (AnimalCount 30 7 5) $
      getAnimalsCount 154 42 10
