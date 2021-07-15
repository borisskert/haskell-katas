module Codewars.Kata.DNASpec where
import Codewars.Kata.DNA (dnaStrand)
import Codewars.Kata.DNA.Types
import Test.QuickCheck
import Test.Hspec


import Test.QuickCheck.Arbitrary

instance Arbitrary Base where
  arbitrary = arbitraryBoundedEnum


spec :: Spec
spec = do
  describe "dnaStrand" $ do
    it "should work for some examples" $ do
      dnaStrand []        `shouldBe` []
      dnaStrand [A,T,G,C] `shouldBe` [T,A,C,G]
      dnaStrand [G,T,A,T] `shouldBe` [C,A,T,A]
      dnaStrand [A,A,A,A] `shouldBe` [T,T,T,T]
    
    it "should not change the length" $ property $ \xs ->
      dnaStrand xs `shouldSatisfy` (length xs ==) . length
