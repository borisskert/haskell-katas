module Codewars.Kata.FoldSpec where
import Codewars.Kata.Fold (foldTo)
import Data.Maybe (isJust, isNothing)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "foldTo" $ do
    it "returns a value for positive numbers" $ property $ \(Positive n) ->
      foldTo n `shouldSatisfy` isJust
    
    it "returns nothing for negative numbers" $ property $ \(Positive n) ->
      foldTo (-n) `shouldSatisfy` isNothing
