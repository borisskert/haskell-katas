module GrabscrabSpec where

import Test.Hspec
import Grabscrab

import Test.HUnit (assertEqual)

myTest s dict exp = do
  assertEqual msg exp actual
  where
    actual = grabScrab s dict
    msg = "Failed at: " ++ showArgs
    showArgs = show (s,dict)

spec :: Spec
spec = do
  it "Fixed tests" $ do
    myTest "trisf"      ["first"]                               ["first"]
    myTest "oob"        ["bob", "baobab"]                       []
    myTest "ainstuomn"  ["mountains", "hills", "mesa"]          ["mountains"]
    myTest "oolp"       ["donkey", "pool", "horse", "loop"]     ["pool", "loop"]
    myTest "ortsp"      ["sport", "parrot", "ports", "matey"]   ["sport", "ports"]
    myTest "ourf"       ["one","two","three"]                   []

-- the following line is optional for 8.2
main = hspec spec
