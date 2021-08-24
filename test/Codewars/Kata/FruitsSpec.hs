module Codewars.Kata.FruitsSpec where
import Codewars.Kata.Fruits (removeRotten)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "removeRotten" $ do
    it "returns [] on []" $ 
      removeRotten [] `shouldBe` []
    
    it "returns the list of no fruit is rotten" $ 
      removeRotten ["banana", "apple", "tomato"] `shouldBe` ["banana", "apple", "tomato"]

    it "returns only lower case strings" $ 
      removeRotten ["cucumber","kiwifruit","rottenStrawberry","rottenBlackberry"]  `shouldBe` ["cucumber","kiwifruit","strawberry","blackberry"] 
