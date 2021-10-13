module CakeSpec where

import Test.Hspec
import Cake


import Test.HUnit (assertEqual)

myTest tol desc exp = do
  assertEqual msg exp actual
  where 
    actual = cake tol desc
    msg = "Failed at: " ++ showArgs
    showArgs = show (tol,desc) 
    
spec :: Spec
spec = do
  it "Fixed " $ do
    myTest 283  "abc"           "That was close!"
    myTest 282  "abc"           "Fire!"
    myTest 900  "abcdef"        "That was close!"
    myTest 56   "ifkhchlhfd"    "Fire!"
    myTest 256  "aaaaaddddr"    "Fire!"
    myTest 333  "jfmgklfhglbe"  "Fire!"
    myTest 12   "jaam"          "Fire!"
    myTest 1007 "fzdddblzsbf"   "That was close!"
    myTest 1621 "dsmbtjhoyonqwrzyap"   "Fire!"
    myTest 897  "mwunexjfhx"    "Fire!"
    myTest 8913707 "vkqhkukjzjrahbo" "That was close!"
    myTest 1410 "xhtoulxopkjpekk" "That was close!"

-- the following line is optional for 8.2
main = hspec spec
