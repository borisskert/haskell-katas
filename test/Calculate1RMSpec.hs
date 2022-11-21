module Calculate1RMSpec where

import Test.Hspec
import Calculate1RM

import Test.HUnit (assertEqual)

myTest w r exp = do
  assertEqual msg exp actual
  where 
    actual = calculate1RM w r
    msg = "Failed at: " ++ showArgs
    showArgs = show (w,r)
    
spec :: Spec
spec = do
  it "Fixed Tests" $ do
    myTest 135 20 282
    myTest 200 8  253
    myTest 270 2  289
    myTest 360 1  360
    myTest 400 0  0    
  
-- the following line is optional for 8.2
main = hspec spec
