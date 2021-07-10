module Codewars.Kata.XorSpec where
import Codewars.Kata.Xor (xor)
import Test.Hspec

spec :: Spec
spec = do
  describe "xor" $ do
    it "returns False if both arguments are False" $ 
      xor False False `shouldBe` False
    
    it "returns True if exactly one argument is True" $ do
      xor False True `shouldBe` True
      xor True False `shouldBe` True
    
    it "returns False if both arguments are True" $
      xor True True `shouldBe` False

-- Well, beside bottom, there are only those four combinations.
