module SecondSymbolSpec where

import Test.QuickCheck
import Test.Hspec
import Test.HUnit (assertEqual)
import SecondSymbol (secondSymbol)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Basic Test Cases" $ do
      assertEqual "Find the index of the second symbol 'l' in the string" 3 $ secondSymbol "Hello world!!!" 'l'
      assertEqual "Find the index of the second symbol 'o' in the string" 7 $ secondSymbol "Hello world!!!" 'o'
      assertEqual "Find the index of the second symbol 'A' in the string" (-1) $ secondSymbol "Hello world!!!" 'A'
      assertEqual "The symbol 'q' is not in the string" (-1) $ secondSymbol "" 'q'
      assertEqual "The symbol '!' is not in the string" (-1) $ secondSymbol "Hello" '!'
