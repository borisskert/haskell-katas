module OddsSpec (spec) where

import Odds
import Test.Hspec
import Test.QuickCheck
import Text.Printf

main = hspec spec
spec = do
  describe "odds" $ do
    it (printf "odds [] should be []") $ do
      odds [] `shouldBe` []
    it (printf "should remove all from even list") $ do 
      property $ \l -> odds (map (*2) l) `shouldBe` []
    it (printf "should do nothing to odd list") $ do 
      property $ \l -> odds (map (+1) (map (*2) l)) `shouldBe` (map (+1) (map (*2) l))
    it (printf "odds (l ++ r) should be odds l ++ odds r") $ do
      property $ \l r -> odds (l ++ r) `shouldBe` odds l ++ odds r
