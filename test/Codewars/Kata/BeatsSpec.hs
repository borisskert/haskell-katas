module Codewars.Kata.BeatsSpec where
import Codewars.Kata.Beats (beasts)
import Control.Applicative (liftA2)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "beasts" $ do
    it "simple examples" $ do
      beasts 7 3 `shouldBe` Nothing
      beasts 7 2 `shouldBe` Just (1, 1)

    it "returns zero if there aren't any tails or heads" $ do
      beasts 0 0 `shouldBe` Just (0,0)
  
    it "works for random valid heads and tails" $ property $
      \(Positive o) (Positive h) ->
        beasts (2 * o + 5 * h) (o + h) `shouldBe` Just (o, h)
  
    it "returns Nothing for invalid numbers of headss and tails" $ property $
      \(Positive o) (Positive h) ->
        beasts (2 * o + 5 * h) (o + h + 1) `shouldBe` Nothing
  
    it "returns Nothing if one argument is negative" $ 
      forAll (oneof [pos <#> neg, neg <#> pos]) $ \(x,y) ->
        beasts x y `shouldBe` Nothing
    where
      pos   = getPositive `fmap` arbitrary
      neg   = negate `fmap` pos
      (<#>) = liftA2 (,)
