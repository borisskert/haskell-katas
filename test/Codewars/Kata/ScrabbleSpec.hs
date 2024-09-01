module Codewars.Kata.ScrabbleSpec where

import Codewars.Kata.Scrabble (getBestWord)
import Test.Hspec
import Test.QuickCheck
import Data.Foldable (maximumBy)
import Data.Ord (comparing)

spec :: Spec
spec = do
  describe "getBestWord" $ do
    it "should work for some examples" $ do
      let points = [1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 10, 1, 2, 1, 1, 3, 8, 1, 1, 1, 1, 4, 10, 10, 10, 10]

      getBestWord points ["WHO", "IS", "THE", "BEST", "OF", "US", "WHO", "WHO"] `shouldBe` 0
      getBestWord points ["NOQ", "TXAY", "S", "OM", "ESFT", "CJUKQ", "QL", "QO", "ASTK", "Y"] `shouldBe` 5

    it "should return a valid index" $
      property $
        forAll (fmap getPositive <$> vector 26) $ \ps ->
          forAll (listOf1 $ listOf1 $ choose ('A', 'Z')) $ \ws ->
            getBestWord ps ws `shouldSatisfy` (\x -> 0 <= x && x < length ws)
