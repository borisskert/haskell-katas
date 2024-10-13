module QuadrantsSpec where

import Quadrants (quadrant)
import Test.HUnit
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Works for basic examples" $ do
      assertEqual "(1,2)" 1 $ quadrant 1 2
      assertEqual "(3,5)" 1 $ quadrant 3 5
      assertEqual "(-10,100)" 2 $ quadrant (-10) 100
      assertEqual "(-1,-9)" 3 $ quadrant (-1) (-9)
      assertEqual "(19,-56)" 4 $ quadrant 19 (-56)
      assertEqual "(1,1)" 1 $ quadrant 1 1
      assertEqual "(-60,-12)" 3 $ quadrant (-60) (-12)
