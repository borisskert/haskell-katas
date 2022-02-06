module GeometricMeanSpec where

import Control.Monad (when)
import GeometricMean
import Test.Hspec
import Test.QuickCheck
import Text.Printf

shouldBeFuzzy :: Maybe Double -> Maybe Double -> Expectation
shouldBeFuzzy Nothing Nothing =
  when (False) $ expectationFailure msg
  where
    msg = "What's up?"
shouldBeFuzzy Nothing (Just exp) =
  expectationFailure msg
  where
    msg = "Expected value must be near " ++ show exp ++ " but got: Nothing"
shouldBeFuzzy (Just act) Nothing =
  expectationFailure msg
  where
    msg = "Expected value must be Nothing but got: " ++ show act
shouldBeFuzzy (Just act) (Just exp) =
  when (abs (act - exp) / act >= 1e-10) $ expectationFailure msg
  where
    msg = "Expected value must be near " ++ show exp ++ " but got: " ++ show act

testApprox :: [Integer] -> Maybe Double -> Spec
testApprox x u =
  it (printf "should return f for x: %s " (show x)) $
    geometricMean x `shouldBeFuzzy` u

arr1 = [2, 3, 4, 6]

arr2 = [2, 3, 4, 6, (-5)]

arr3 = [2, 3, 4, 6, (-5), (-4)]

arr4 = [2, 2, 3, 4, 10, 8, 1, 4, 6, 7, 2]

arr5 = [2, 2, 3, 4, 10, (-4), 8, 1, 4, 6, 7, 2]

arr6 = [2, 2, 3, 0, 4, 10, (-4), 8, 1, 4, 6, 7, 2]

arr7 = [2, 2, 3, (-5), 4, 10, (-4), 8, 1, 4, 6, 7, 2]

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  testApprox arr1 (Just 3.46410161514)
  testApprox arr2 (Just 3.46410161514)
  testApprox arr3 Nothing
  testApprox arr4 (Just 3.59348221822)
  testApprox arr5 (Just 3.59348221822)
  testApprox arr6 (Just 0)
  testApprox arr7 Nothing
  testApprox [40, 41, 40, 36, 10, 23, 5, 11, 44, 44, 27, 6, 25, 11, 34, 4, 10, 48, 48, 47, 38, 17, 3, 15, 34, 28, 2, -3, 19, 49, 6, 9, 0, 45, 43, 8, 8, 17, 3, 14, 49, 17, 11, 5, 38, 15, 1, 47, 46, 20, 46, -3, 34, 6, -3, 10, 9, 36, 31, 22, 12, 32, 33, 41, 49, 18, 21, 1, 34, 11, 13, 39, 43, 4, 2, 38, 44, 29, 29, 50, 40, 14, 29, 22, 15, 50, 47, 38, 17] (Just 0.0)
  testApprox [26, 23, 40, 12, -2, 8, 35, 6, 8, 47, 13, 15, 32, -1, 4, 7, 1, 39, 11, 16, -4, 40, 30, 8, 36, 1, 50, 42, 38, 31, 36, 18, 6, 16, 10, 8, 13, 27, 8, 40, 2, 46, 41, -3, 4, 32, 31, 35, 33, 37, 5, 39] (Just 16.243524418751907)

-- the following line is optional for 8.2
main = hspec spec
