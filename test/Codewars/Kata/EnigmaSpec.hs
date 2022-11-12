module Codewars.Kata.EnigmaSpec where
import Codewars.Kata.Enigma (plugboard)
import Test.Hspec
import Test.QuickCheck
import Control.Applicative

spec :: Spec
spec = do
  describe "plugboard" $ do
    context "configuration" $ do
      it "should create a function for valid configurations" $ do
        shouldBeValid $ plugboard ""
        shouldBeValid $ plugboard "AB"
        shouldBeValid $ plugboard "ABCD"
        
      it "should return a error message on invalid configurations" $ do
        shouldBeInvalid $ plugboard "A"
        shouldBeInvalid $ plugboard "AA"
        shouldBeInvalid $ plugboard "ABC"
        shouldBeInvalid $ plugboard ['A'..'Z'] -- too many characters
    
    context "encoding" $ do      
      it "should correctly encode messages when there haven't been any wires plugged" $ do
        property $ forAll (choose ('A','Z')) $ \xs ->
          plugboard "" <**> xs `shouldBe` Right xs
      
      it "should work properly on some examples" $ do
        let board = plugboard "AB"
        board <**> 'A'   `shouldBe` Right 'B'
        board <**> 'B'   `shouldBe` Right 'A'
        board <**> 'C'   `shouldBe` Right 'C'        
  
  describe "some invalid configurations" $ do
    it "..." $ do
      shouldBeInvalid $ plugboard "SQMRCONLWPTYZE"
      shouldBeInvalid $ plugboard "UMSVSKHP"
      shouldBeInvalid $ plugboard "JFVKZWUCAMSHYN"

  where shouldBeValid   = either (const $ expectationFailure "Returned an error mesage instead a function") (const $ return ())
        shouldBeInvalid = either (const $ return ()) (const $ expectationFailure "Returned a function on an invalid configuration")
        (<**>) :: Applicative f => f (a -> b) -> a -> f b
        f <**> a = f <*> pure a
        infixl 4 <**>
