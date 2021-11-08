module Codewars.Exercise.ScrabbleSpec where
import Codewars.Exercise.Scrabble (scrabbleScore)
import Codewars.Exercise.Scrabble.Score
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
    describe "scrabbleScore" $ do
        it "returns 0 on an empty word" $ scrabbleScore "" `shouldBe` 0
        it "returns 1 for 'a'" $ 
          scrabbleScore "a" `shouldBe` 1
        it "returns 6 for 'street'" $ 
          scrabbleScore "street" `shouldBe` 6
          
        it "returns score of 'a ' (with space)" $ 
          scrabbleScore " a" `shouldBe` 1
        
        it "returns score for street with whitespace" $ 
          scrabbleScore "st re et" `shouldBe` 6
          
        it "returns 14 for 'ca bba g  e'" $ 
          scrabbleScore "ca bba g  e" `shouldBe` 14
