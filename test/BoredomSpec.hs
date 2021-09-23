module BoredomSpec where

import Test.Hspec
import Boredom


import Test.HUnit (assertEqual)

myTest staff exp = do
  assertEqual msg exp actual
  where 
    actual = boredom staff
    msg = "Failed at: " ++ showArgs
    showArgs = show staff
    
spec :: Spec
spec = do
  it "Fixed Cases" $ do
    myTest [("tim", CHANGE), ("jim", ACCOUNTS), ("randy", CANTEEN),("sandy",CHANGE),("andy",CHANGE),("katie",IS),("laura",CHANGE),("saajid",IS),("alex",TRADING),("john",ACCOUNTS),("mr",FINANCE)] "kill me now"
    myTest [("",RETAIL),("",FINANCE),("",FINANCE),("",TRADING),("",CANTEEN),("",CANTEEN),("",RETAIL),("",REGULATION),("",FINANCE),("",TRADING),("",CANTEEN),("",PISSING_ABOUT),("",ACCOUNTS),("",ACCOUNTS),("",ACCOUNTS),("",IS),("",CANTEEN),("",TRADING),("",CLEANING),("",RETAIL),("",FINANCE),("",IS)] "party time!!"
    myTest [("\615464Q-",PISSING_ABOUT),("",PISSING_ABOUT),("Q\DC3",CANTEEN),("",ACCOUNTS),("\DC3",CHANGE),("G\SUB@\b\114272",RETAIL),("\828125e",REGULATION),("\755814F",CANTEEN),("K",REGULATION),("",CHANGE),("\SO",RETAIL)] "i can handle this"

-- the following line is optional for 8.2
main = hspec spec
