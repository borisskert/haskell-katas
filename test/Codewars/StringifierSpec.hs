module Codewars.StringifierSpec where

import Codewars.Stringifier (stringy)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "stringy" $ do
    it "should return a string which starts with 1" $ property $
      forAll (choose (1, 250)) $ \n ->
        stringy n !! 0 `shouldBe` '1'
    
    it "should return a string of correct length " $ property $
      forAll (choose (1, 250)) $ \n ->
        length (stringy n) `shouldBe` n
    
    it "should work for some examples" $ do
      stringy 3  `shouldBe` "101"
      stringy 5  `shouldBe` "10101"
      stringy 12 `shouldBe` "101010101010"
      stringy 26 `shouldBe` "10101010101010101010101010"
      stringy 28 `shouldBe` "1010101010101010101010101010"
