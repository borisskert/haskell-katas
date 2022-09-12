module OfficeVSpec (spec) where

import OfficeV (meeting)
import Test.Hspec
import Test.HUnit (assertEqual)

myTest rooms need expected = assertEqual message expected actual where 
  actual = meeting rooms need
  message = "Failed at: " ++ show (rooms,need)
    
spec :: Spec
spec = do
  it "example tests" $ do
    myTest [("XXX", 3), ("XXXXX"  , 6), ("XXXXXX", 9)] 4                                  (Right [0, 1, 3])
    myTest [("XXX", 1), ("XXXXXX" , 6), ("X", 2), ("XXXXXX", 8), ("X", 3), ("XXX", 1)] 5  (Right [0, 0, 1, 2, 2])
    myTest [("XX", 2) , ("XXXX"   , 6), ("XXXXX", 4)]  0                                  (Left "Game On")
    myTest [("XX", 2) , ("XXXX"   , 6), ("XXXXX", 4)]  8                                  (Left "Not enough!")
    myTest [("XX", 2) , ("XXXX"   , 6), ("XXXXX", 4)]  2                                  (Right [0, 2])
    myTest [("XXXXXX",3),("XX",2),("XXXXXXXXXX",6),("XX",7),("XXXXX",8)] 6                (Right [0,0,0,5,1])
