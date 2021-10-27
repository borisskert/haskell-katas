module KillBitSpec where

import Test.Hspec
import KillBit
import Test.HUnit (assertEqual)

myTest n k exp = do
  assertEqual msg exp actual
  where 
    actual = killKthBit n k 
    msg = "Failed at: " ++ showArgs
    showArgs = show (n,k)
    
-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "Fixed" $ do
    myTest 37 3  33
    myTest 0  4   0
    myTest 2147483647 16  2147450879
    myTest 374823748  13  374819652
    myTest 1084197039 15  1084197039

-- the following line is optional for 8.2
main = hspec spec
