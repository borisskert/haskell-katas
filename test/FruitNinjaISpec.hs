module FruitNinjaISpec where

import Test.Hspec
import FruitNinjaI


import Test.HUnit (assertEqual)

myTest fts exp = do
  assertEqual msg exp actual
  where 
    actual = cutFruits fts
    msg = "Failed at: " ++ showArgs
    showArgs = show fts
    
spec :: Spec
spec = do
  it ("Basic Tests") $ do
    myTest ["apple","pear","banana"]        ["app","le","pe","ar","ban","ana"]
    myTest ["apple","pear","banana","bomb"] ["app","le","pe","ar","ban","ana","bomb"]
  it "cut" $ do
    cut "banana" `shouldBe` ["ban", "ana"]
    cut "apple" `shouldBe` ["app", "le"]

-- the following line is optional for 8.2
main = hspec spec
