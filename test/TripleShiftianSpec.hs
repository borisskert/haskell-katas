module TripleShiftianSpec where

import Test.Hspec
import TripleShiftian


import Test.HUnit (assertEqual)

myTest base n exp = do
  assertEqual msg exp actual
  where 
    actual = tripleShiftian base n
    msg = "Failed at: " ++ showArgs
    showArgs = show (base,n)
    
spec :: Spec
spec = do
  it "Fixed tests" $ do
    myTest (1,1,1) 0 1
    myTest (1,1,1) 1 1
    myTest (1,1,1) 2 1
    myTest (1,1,1) 3 2
    myTest (1,1,1) 4 6
    myTest (1,1,1) 5 17
    myTest (1,1,1) 25 1219856746
    myTest (1,2,3) 25 2052198929
    myTest (3,2,1) 25 2827228055
    myTest (6,7,2) 25 (-2575238999)
    myTest (1,1,1) 35 10127083068293
    myTest (1,2,3) 35 17037073417493
    myTest (3,2,1) 35 23471258855679
    myTest (6,7,2) 35 (-21379280887590)
    myTest (3,2,1) 0 3
    myTest (6,7,2) 2 2

-- the following line is optional for 8.2
main = hspec spec
