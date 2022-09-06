module Codewars.G964.OperarraySpec where
import Codewars.G964.Operarray

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testoperGcdi :: [Integer] -> [Integer] -> Spec
testoperGcdi r s = 
    it (printf "should return operArray gcdi for arr: %s \n" (show r)) $
        operArray gcdi r (r !! 0) `shouldBe` s
testoperLcmu :: [Integer] -> [Integer] -> Spec
testoperLcmu r s = 
    it (printf "should return operArray lcmu for arr: %s \n" (show r)) $
        operArray lcmu r (r !! 0) `shouldBe` s
testoperSom :: [Integer] -> [Integer] -> Spec
testoperSom r s = 
    it (printf "should return operArray som for arr: %s \n" (show r)) $
        operArray som r 0 `shouldBe` s
testoperMini :: [Integer] -> [Integer] -> Spec
testoperMini r s = 
    it (printf "should return operArray mini for arr: %s \n" (show r)) $
        operArray mini r (r !! 0) `shouldBe` s
testoperMaxi :: [Integer] -> [Integer] -> Spec
testoperMaxi r s = 
    it (printf "should return operArray maxi for arr: %s \n" (show r)) $
        operArray maxi r (r !! 0) `shouldBe` s

spec :: Spec
spec = do
    describe "operArray 1" $ do
        let a = [ 18, 69, -90, -78, 65, 40 ]
        testoperGcdi a [ 18, 3, 3, 3, 1, 1 ]
        testoperLcmu a [ 18, 414, 2070, 26910, 26910, 107640 ]
        testoperSom a [ 18, 87, -3, -81, -16, 24 ]
        testoperMini a [ 18, 18, -90, -90, -90, -90 ]
        testoperMaxi a [ 18, 69, 69, 69, 69, 69 ]
