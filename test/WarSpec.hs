module WarSpec where

import Test.Hspec
import War

import Test.HUnit (assertEqual)

test s exp = do
  print $ "Looking for: " ++ exp
  assertEqual msg exp actual
  where 
    actual = alphabetWar s
    msg = "Failed at: " ++ s
    
spec :: Spec
spec = do
  it "Fixed cases" $ do
    test "z"        "Right side wins!"
    test "zdqmwpbs" "Let's fight again!"
    test "wq"       "Left side wins!"
    test "zzzzs"    "Right side wins!"
    test "wwwwww"   "Left side wins!"


-- the following line is optional for 8.2
main = hspec spec
