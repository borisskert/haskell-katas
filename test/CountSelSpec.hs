module CountSelSpec where

import CountSel
import Test.HUnit (assertEqual)
import Test.Hspec

myTest ns exp = do
  assertEqual msg exp actual
  where
    actual = countSel ns
    msg = "Failed at: " ++ showArgs
    showArgs = show ns

spec :: Spec
spec = do
  it "Simple cases " $ do
    myTest [-3, -2, -1, 3, 4, -5, -5, 5, -1, -5] (10, 7, 5, ([-5], 3))
    myTest [5, -1, 1, -1, -2, 5, 0, -2, -5, 3] (10, 7, 4, ([-2, -1, 5], 2))
    myTest [-2, 4, 4, -2, -2, -1, 3, 5, -5, 5] (10, 6, 3, ([-2], 3))
    myTest [4, -5, 1, -5, 2, 4, -1, 4, -1, 1] (10, 5, 1, ([4], 3))
    myTest [4, 4, 2, -3, 1, 4, 3, 2, 0, -5, 2, -2, -2, -5] (14, 8, 4, ([2, 4], 3))

-- the following line is optional for 8.2
main = hspec spec
