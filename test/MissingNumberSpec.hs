module MissingNumberSpec where

import MissingNumber (missingNo)
import Test.Hspec
import Test.QuickCheck
import Test.Hspec (shouldBe)

spec = do
  it "zero" $
    forAll (shuffle [1..100]) $ \xs ->
      missingNo xs `shouldBe` 0
  it "twelve" $
    forAll (shuffle $ [0..11] ++ [13..100]) $ \xs ->
      missingNo xs `shouldBe` 12
  it "hundred" $
    missingNo [59,24,54,76,26,78,33,29,74,31,57,5,89,28,30,38,95,16,62,97,72,66,2,6,39,3,48,51,10,61,46,25,85,0,65,94,56,20,11,86,88,55,42,43,82,69,47,67,98,58,91,34,90,35,73,60,80,79,45,52,19,21,1,63,4,99,15,50,17,70,40,77,87,93,14,96,44,81,32,75,37,53,92,71,36,49,41,27,8,13,23,83,7,12,64,18,84,9,68,22] `shouldBe` 100
