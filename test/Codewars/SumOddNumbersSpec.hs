module Codewars.SumOddNumbersSpec where

import Codewars.SumOddNumbers
import Test.Hspec

spec :: Spec
spec = do
  describe "rowSumOddNumbers" $ do
    it "should return 8 on input 2" $
      rowSumOddNumbers 2 `shouldBe` 8
    it "should return 3 on input 2" $
      rowSumOddNumbers 3 `shouldBe` 27
    it "should return 4 on input 2" $
      rowSumOddNumbers 4 `shouldBe` 64
    it "should return 5 on input 2" $
      rowSumOddNumbers 5 `shouldBe` 125
    it "should return 6 on input 2" $
      rowSumOddNumbers 6 `shouldBe` 216
    
    it "should return 2197 on input 13" $
      rowSumOddNumbers 13 `shouldBe` 2197
    
    it "should return 6859 on input 19" $
      rowSumOddNumbers 19 `shouldBe` 6859
      
    it "should return 970299 on input 99" $
      rowSumOddNumbers 99 `shouldBe` 970299
