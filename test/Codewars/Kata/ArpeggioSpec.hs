module Codewars.Kata.ArpeggioSpec where
import Codewars.Kata.Arpeggio (arpeggio)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "arpeggio" $ do
    it "works for B" $
      arpeggio 'B' `shouldBe` Just "BDFB"
    
    it "works for Z" $
      arpeggio 'Z' `shouldBe` Nothing
    
    it "works for A" $
      arpeggio 'A' `shouldBe` Just "ACEA"
      
    it "works for C" $
      arpeggio 'C' `shouldBe` Just "CEGC"
        
    it "works for D" $
      arpeggio 'D' `shouldBe` Just "DFAD"
  
    it "works for F" $
      arpeggio 'F' `shouldBe` Just "FACF"  

    it "works for E" $
      arpeggio 'E' `shouldBe` Just "EGBE"
  
    it "works for G" $
      arpeggio 'G' `shouldBe` Just "GBDG"
  
    it "works for c" $
      arpeggio 'c' `shouldBe` Nothing
