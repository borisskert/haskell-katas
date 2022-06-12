module CountDeafRatsSpec where

import Test.Hspec
import CountDeafRats

import Test.HUnit

myTest s exp = do
  assertEqual msg exp actual
  where 
    actual = countDeafRats s
    msg = "Failed at: " ++ showArgs
    showArgs = s
    
spec :: Spec
spec = do
  it "Fixed Tests " $ do
    myTest "~O~O~O~O P"       0
    myTest "P O~ O~ ~O O~"    1
    myTest "~O~O~O~OP~O~OO~"  2

-- the following line is optional for 8.2
main = hspec spec
