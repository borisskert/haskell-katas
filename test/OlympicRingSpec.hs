module OlympicRingSpec where

import Test.Hspec
import OlympicRing

import Test.HUnit (assertEqual)

myTest str exp = do
  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where 
    actual = olympicRing str
    msg = "Failed at: " ++ showArgs
    showArgs = str
    
spec :: Spec
spec = do
  it "Fixed Tests" $ do
    myTest "wHjMudLwtoPGocnJ" (Just Bronze)
    myTest "eCEHWEPwwnvzMicyaRjk" (Just Bronze)
    myTest "JKniLfLW" Nothing
    myTest "EWlZlDFsEIBufsalqof" (Just Silver)
    myTest "IMBAWejlGRTDWetPS" (Just Gold)
    myTest "Bzwp" Nothing
    myTest "DNSdjRPNRIyrIWHBzMVPn" (Just Gold)

-- the following line is optional for 8.2
main = hspec spec
