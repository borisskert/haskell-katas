module IsSmoothSpec where

import Test.Hspec
import Test.HUnit
import IsSmooth (isSmooth)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Works for some examples" $ do
      mapM_
        runTest
        [ ([7, 2, 2, 5, 10, 7] , True)
        , ([-12, 34, 40, -5, -12, 4, 0, 0, -12] , True)
        , ([-5, -5, 10] , False)
        , ([4, 2] , False)
        , ([45, 23, 12, 33, 12, 453, -234, -45] , False)
        , ([9, 0, 15, 9] , False)
        , ([-6, 6, -6] , False)
        , ([26, 26, -17] , False)
        , ([-7, 5, 5, 10] , False)
        , ([3, 4, 5] , False)
        , ([-5, 3, -1, 9] , False)
        ]
        
runTest :: ([Int], Bool) -> Expectation
runTest (input, expected) =
  assertEqual (show input) expected $
    isSmooth input
