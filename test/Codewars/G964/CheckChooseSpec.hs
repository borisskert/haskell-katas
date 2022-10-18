module Codewars.G964.CheckChooseSpec (spec) where
import Codewars.G964.CheckChoose

import Test.Hspec
import Text.Printf (printf)
        
testCheckChoose :: Integer -> Integer -> Integer -> Spec
testCheckChoose m n s = 
  it (printf "should return checkchoose for m = %i n = %i " m n) $
    checkchoose m n `shouldBe` s
    
main = hspec spec
spec = do

    describe "checkchoose for small numbers" $ do        
        testCheckChoose 6 4 2
        testCheckChoose 4 4 1
        testCheckChoose 4 2 (-1)
        testCheckChoose 35 7 3
        testCheckChoose 36 7 (-1)
