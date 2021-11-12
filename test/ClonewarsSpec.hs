module ClonewarsSpec where

import Test.Hspec
import Clonewars

import Test.HUnit (assertEqual)

myTest k exp = do
  assertEqual msg exp actual
  where 
    actual = clonewars k
    msg = "Failed at: " ++ showArgs
    showArgs = show k
    
spec :: Spec
spec = do
  it "Basic tests" $ do
    myTest 0 (1, 0)
    myTest 1 (1, 1)
    myTest 2 (2, 4)
    myTest 3 (4, 11)
    myTest 4 (8, 26)
    myTest 5 (16, 57)
    myTest 7 (64, 247)
    myTest 8 (128, 502)
    myTest 10 (512, 2036)
    myTest 17 (65536, 262125)
    myTest 27 (67108864, 268435427)
    myTest 33 (4294967296, 17179869149)
    myTest 56 (36028797018963968, 144115188075855814)
    myTest 59 (288230376151711744, 1152921504606846915)
    myTest 81 (1208925819614629174706176, 4835703278458516698824621)
    myTest 85 (19342813113834066795298816, 77371252455336267181195177)
  
-- the following line is optional for 8.2
main = hspec spec
