module Codewars.Kata.FakeBinarySpec where
import Codewars.Kata.FakeBinary (fakeBin)
import Test.Hspec
import Test.QuickCheck
  
newtype Number = Number String deriving (Eq, Show)
  
instance Arbitrary Number where
  arbitrary = Number `fmap` listOf (choose ('0','9'))

spec :: Spec
spec = do
  describe "fakeBin" $ do
    it "works for empty strings" $ 
      fakeBin "" `shouldBe` ""
      
    it "only returns 0 and 1" $ property $ \(Number xs) ->
      fakeBin xs `shouldSatisfy` all (`elem` "01")
    
    it "works for some examples" $ do
      fakeBin "45385593107843568"           `shouldBe` "01011110001100111"
      fakeBin "509321967506747"             `shouldBe` "101000111101101"
      fakeBin "366058562030849490134388085" `shouldBe` "011011110000101010000011011"
