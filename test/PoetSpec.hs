module PoetSpec where

import Test.Hspec
import Poet
import Test.HUnit (assertEqual)

test s exp = do
  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where 
    actual = pendulum s
    msg = "Failed at: " ++ showArgs
    showArgs = show s
    
spec :: Spec
spec = do
 it "Short positives" $ do
   test [4,10,9]        [10,4,9]
   test [8,7,10,3]      [8,3,7,10]
   test [6,6,8,5,10]    [10,6,5,6,8]
   test [9,4,6,4,10,5]  [9,5,4,4,6,10]
   test [4,6,8,7,5]     [8,6,4,5,7]
   test [10,5,6,10]     [10,5,6,10]
   test [11,12,12]      [12,11,12]
 it "Medium positives" $ do
   test [27,27,19,21,22,28,24]            [28,27,22,19,21,24,27]
   test [20,19,25,16,19,30,18,24]         [25,20,19,16,18,19,24,30]
   test [22,26,21,27,24,21,15,26,25]      [27,26,24,21,15,21,22,25,26]
   test [19,30,16,19,28,26,28,17,21,17]   [28,26,19,17,16,17,19,21,28,30]
   test [27,28,26,28,24,22,18,16,15,24]   [28,26,24,18,15,16,22,24,27,28]
   test [17,26,15,26,26,20,16,18,15]      [26,26,18,16,15,15,17,20,26]
   test [22,21,19,27,18,15,24,24]         [24,22,19,15,18,21,24,27]
 it "Lengthy positives" $ do
   test [33,38,38,36,43,48,32,40,47,50,33]        [50,47,40,38,33,32,33,36,38,43,48]
   test [49,40,41,41,39,43,40,46,30,47,46,40]     [47,46,41,40,40,30,39,40,41,43,46,49]
   test [48,41,38,35,50,46,38,42,37,49,44,32,37]  [50,48,44,41,38,37,32,35,37,38,42,46,49]
   test [49,30,39,30,40,44,43,48,47,50,42,48,33]  [50,48,47,43,40,33,30,30,39,42,44,48,49]
   test [48,43,35,47,39,38,38,46,49,32,42]        [49,47,43,39,38,32,35,38,42,46,48]
 it "Short negatives" $ do
   test [-9,-2,-10,-6]  [-6,-10,-9,-2]
   test [-3,-6,-7]  [-3,-7,-6]
   test [-7,-8,-2,-3,-4]  [-2,-4,-8,-7,-3]
   test [-8,-8,-9,-10,-10,-3]  [-8,-9,-10,-10,-8,-3]
   test [-7,-10,-1,-10,-8]  [-1,-8,-10,-10,-7]
   test [-6,-2,-5]  [-2,-6,-5]
 it "Medium negatives" $ do
   test [-2,-11,-6,-11,-4,-3,-5]  [-2,-4,-6,-11,-11,-5,-3]
   test [-19,-9,-5,-6,-15,-16,-5,-12]  [-5,-9,-15,-19,-16,-12,-6,-5]
   test [-18,-2,-11,-10,-6,-7,-7,-12,-16]  [-2,-7,-10,-12,-18,-16,-11,-7,-6]
   test [-10,-10,-12,-13,-5,-10,-4,-17,-5,-12]  [-5,-10,-10,-12,-17,-13,-12,-10,-5,-4]
 it "Lengthy negatives" $ do
   test [-33,-21,-6,-29,-24,-5,-50,-42,-43,-17,-17]  [-5,-17,-21,-29,-42,-50,-43,-33,-24,-17,-6]
   test [-4,-50,-32,-23,-47,-44,-43,-24,-29,-44,-20,-35]  [-20,-24,-32,-43,-44,-50,-47,-44,-35,-29,-23,-4]
   test [-36,-38,-44,-47,-41,-27,-10,-30,-22,-11,-23,-50,-23]  [-10,-22,-23,-30,-38,-44,-50,-47,-41,-36,-27,-23,-11]
 it "Mix " $ do
   test [-15,8,11]  [11,-15,8]
   test [8,-1,-1,-10]  [-1,-10,-1,8]
   test [-8,15,8,-3,-11]  [15,-3,-11,-8,8]
   test [15,17,3,-20,-1,3]  [15,3,-20,-1,3,17]
   test [-8,-13,-19,-8,7,15,-10]  [15,-8,-10,-19,-13,-8,7]
   test [11,-16,-18,13,-11,-12,3,18]  [13,3,-12,-18,-16,-11,11,18]
   test [7,-5,-20,15,2,10,18,4,-10]  [18,10,4,-5,-20,-10,2,7,15]
   test [-6,1,2,12,19,12,19,-10,13,1]  [19,12,2,1,-10,-6,1,12,13,19]
    
-- the following line is optional for 8.2
main = hspec spec