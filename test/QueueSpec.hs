module QueueSpec where

import Queue
import Test.HUnit (assertEqual)
import Test.Hspec

myTest q p exp = do
  assertEqual msg exp actual
  where
    actual = queue q p
    msg = "Failed at: " ++ showArgs
    showArgs = show (q, p)

spec :: Spec
spec = do
  it "Basic Tests " $ do
    myTest [2, 5, 3, 6, 4] 0 6
    myTest [2, 5, 3, 6, 4] 1 18
    myTest [2, 5, 3, 6, 4] 2 12
    myTest [2, 5, 3, 6, 4] 3 20
    myTest [2, 5, 3, 6, 4] 4 17
    myTest [12, 17, 25, 18, 19, 3, 26, 28, 6, 14, 3, 1, 7, 25, 5, 24, 2, 11, 17, 7, 23, 25, 7, 8, 14, 26, 9, 24, 24, 5, 22, 25, 6, 22, 19, 7, 7, 24, 14, 16, 4] 15 583

main = hspec spec
