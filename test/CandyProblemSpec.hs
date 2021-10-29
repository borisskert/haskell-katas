module CandyProblemSpec (spec) where
import CandyProblem (candies)
import Test.Hspec
import Test.QuickCheck

examples = do
  it "should work for some examples" $ do
    candies [5,8,6,4] `shouldBe` 9
    candies [1,2,4,6] `shouldBe` 11
    candies [1,2] `shouldBe` 1
    candies [4,2] `shouldBe` 2
    candies [] `shouldBe` -1
    candies [0] `shouldBe` -1
    candies [4] `shouldBe` -1
    
main = hspec spec
spec = do
  describe "Examples" examples
