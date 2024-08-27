module HighestValuePyramidSpec (spec) where

import HighestValuePyramid (pyramid)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    assertEqual "pyramid [1,1,1,2,2,2,3,3,3]" (Just 14) $ pyramid [1, 1, 1, 2, 2, 2, 3, 3, 3]
    assertEqual "pyramid [-1,-1,0,0,1,1]" Nothing $ pyramid [-1, -1, 0, 0, 1, 1]
    assertEqual "pyramid []" Nothing $ pyramid []
  it "more example tests" $ do
    assertEqual "pyramid [1,1,1,2,2,3]" (Just 10) $ pyramid [1, 1, 1, 2, 2, 3]
    assertEqual "pyramid [5,3,5,3,0,0,-1,0,0,3,3,3]" (Just 19) $ pyramid [5, 3, 5, 3, 0, 0, -1, 0, 0, 3, 3, 3]
    assertEqual "pyramid [1,0,-1,-1,-2,-1,-2,-10]" (Just $ -6) $ pyramid [1, 0, -1, -1, -2, -1, -2, -10]
    assertEqual "pyramid [-10,-10,-6,6,-6,4,-6,4,2,0,10,-10,-10]" (Just 0) $ pyramid [-10, -10, -6, 6, -6, 4, -6, 4, 2, 0, 10, -10, -10]
    assertEqual "pyramid [7,7,7,7,7,7]" Nothing $ pyramid [7, 7, 7, 7, 7, 7]
    assertEqual "pyramid [10,10,5,5,1,1]" Nothing $ pyramid [10, 10, 5, 5, 1, 1]
