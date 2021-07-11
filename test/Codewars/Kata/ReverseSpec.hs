module Codewars.Kata.ReverseSpec where
import Codewars.Kata.Reverse (reverseList)
import Test.Hspec

spec :: Spec
spec = do
  describe "reverseList" $ do  
    it "should work for some examples" $ do
      reverseList [1,2,3,4] `shouldBe` [4,3,2,1]
      reverseList [3,1,5,4] `shouldBe` [4,5,1,3]
      reverseList "Hello olleH" `shouldBe` "Hello olleH"
