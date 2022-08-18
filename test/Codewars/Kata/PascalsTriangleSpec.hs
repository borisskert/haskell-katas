module Codewars.Kata.PascalsTriangleSpec where
import Codewars.Kata.PascalsTriangle (pascalsTriangle)
import Test.Hspec 
import Test.QuickCheck

spec :: Spec
spec = 
  describe "Sample tests" $ do
    it "should work for 1 level" $ do
      pascalsTriangle 1  `shouldBe` [1]
    it "should work for 2 levels" $ do
      pascalsTriangle 2  `shouldBe` [1,1,1]
    it "should work for 4 levels" $ do      
      pascalsTriangle 4  `shouldBe` [1,1,1,1,2,1,1,3,3,1]
    it "should work for 6 levels" $ do      
      pascalsTriangle 6  `shouldBe` [1,1,1,1,2,1,1,3,3,1,1,4,6,4,1,1,5,10,10,5,1]
