module Codewars.Kata.SheepSpec where
import Codewars.Kata.Sheep (countSheep)
import Test.Hspec
import Test.QuickCheck

spec = do
  describe "countSheep" $ do
    it "should work for some examples" $ do
      countSheep []            `shouldBe` 0
      countSheep [True]        `shouldBe` 1
      countSheep [True,False]  `shouldBe` 1
      countSheep [False,False] `shouldBe` 0
    it "should work for semi-random sheep" $ do
      property $ \x y -> x >= 0 ==> 
        countSheep (replicate x True ++ replicate y False) `shouldBe` x
