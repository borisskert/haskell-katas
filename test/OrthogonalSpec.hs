module OrthogonalSpec where

import Orthogonal (isOrthogonal)
import Test.HUnit
import Test.Hspec

runTest :: ([Int], [Int], Bool) -> Expectation
runTest (xs, ys, expected) =
  assertEqual (unwords [show xs, show ys]) expected $
    isOrthogonal xs ys

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Works for some example tests" $ do
      mapM_
        runTest
        [ ([1, 2], [2, 1], False),
          ([1, -2], [2, 1], True),
          ([7, 8], [7, -6], False),
          ([-13, -26], [-8, 4], True),
          ([1, 2, 3], [0, -3, 2], True),
          ([3, 4, 5], [6, 7, -8], False),
          ([3, -4, -5], [-4, -3, 0], True),
          ([1, -2, 3, -4], [-4, 3, 2, -1], True),
          ([2, 4, 5, 6, 7], [-14, -12, 0, 8, 4], True),
          ([5, 10, 1, 20, 2], [-2, -20, -1, 10, 5], False)
        ]
