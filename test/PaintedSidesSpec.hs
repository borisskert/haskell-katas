module PaintedSidesSpec (spec) where

import PaintedSides (paintedFaces)
import Test.Hspec
import Test.HUnit (assertEqual)

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "paintedFaces 4 3"   8 $ paintedFaces  4 3
    assertEqual "paintedFaces 5 1"  54 $ paintedFaces  5 1
    assertEqual "paintedFaces 10 2" 96 $ paintedFaces 10 2
    assertEqual "paintedFaces 2 2"   0 $ paintedFaces  2 2
    assertEqual "paintedFaces 9 0" 343 $ paintedFaces  9 0
    assertEqual "paintedFaces 7 4"   0 $ paintedFaces  7 4
    assertEqual "paintedFaces 1 6"   1 $ paintedFaces  1 6
    assertEqual "paintedFaces 1 0"   0 $ paintedFaces  1 0
    assertEqual "paintedFaces 1 3"   0 $ paintedFaces  1 3
    assertEqual "paintedFaces 0 3"   0 $ paintedFaces  0 3
