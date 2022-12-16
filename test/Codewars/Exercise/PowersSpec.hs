module Codewars.Exercise.PowersSpec (spec) where
import Codewars.Exercise.Powers (comparePowers)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

main = hspec spec
spec = describe "comparePowers" $ do
  it "should work for some examples" $ do
    (2, 10) `comparePowers` (2, 15) `shouldBe` LT
    (1, 10) `comparePowers` (2, 10) `shouldBe` LT
    (2, 10) `comparePowers` (2, 10) `shouldBe` EQ
    (3,  9) `comparePowers` (1,  6) `shouldBe` GT
    (1,  7) `comparePowers` (1,  8) `shouldBe` EQ
    
  prop "returns LT if the first power is smaller" $ 
    forAll genSmall4 $ \(b, e, ob, oe) ->
      (b, e) `comparePowers` (b + ob, e + oe) `shouldBe` LT
  
  prop "returns EQ if the numbers are the same" $ 
    forAll genSmall4 $ \(b, e, _, _) ->
      (b, e) `comparePowers` (b, e) `shouldBe` EQ
    
  prop "returns GT if the first power is greater" $ 
    forAll genSmall4 $ \(b, e, ob, oe) ->
      (b + ob, e + oe) `comparePowers` (b, e) `shouldBe` GT
  
  prop "returns the correct result for small numbers" $ 
    forAll genSmall4 $ \(x, y, a, b) ->
      (x, y) `comparePowers` (a, b) `shouldBe` (fromIntegral x ^ fromIntegral y) `compare` (fromIntegral a ^ fromIntegral b :: Integer)

genSmall4 = do
  b <- choose (1, 2^16)
  e <- choose (1, 2^16)
  b' <- choose (1, 2^16)
  e' <- choose (1, 2^16)
  return (b, e, b', e')
