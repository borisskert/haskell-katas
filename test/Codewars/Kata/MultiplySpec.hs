module Codewars.Kata.MultiplySpec where
import Codewars.Kata.Multiply (multiply)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "multiply" $ do
    it "works for some examples" $ do
      multiply   3  `shouldBe`    15
      multiply  10  `shouldBe`   250
      multiply 200  `shouldBe` 25000
      multiply   0  `shouldBe`     0
      multiply (-3) `shouldBe`  (-15)
    
    it "returns the negated number for negated inputs" $ property $ \x ->
        multiply x `shouldBe` negate (multiply (negate x))
    
    it "multiplies with the correct power of 5" $ property $ \(Positive n) ->
      let k = 10 ^ (n :: Int)
          f =  5 ^ (n + 1)
      in multiply k `shouldBe` k * f
