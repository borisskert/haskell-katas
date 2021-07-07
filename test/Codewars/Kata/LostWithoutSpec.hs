module Codewars.Kata.LostWithoutSpec (spec, main) where
import Codewars.Kata.LostWithout (maps)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

main = hspec spec
spec = describe "maps" $ do  
  it "works on empty lists" $ do
    maps [] `shouldBe` []
    
  it "works for some examples" $ do
    maps [1..5] `shouldBe` [2,4..10]
    maps [5,5]  `shouldBe` [10,10]
    maps [9,-1] `shouldBe` [18,-2]  
  
  prop "returns a list of the same length" $ \xs ->
    length (maps xs) `shouldBe` length xs
    
  prop "the head of the list should be doubled" $ \(NonEmpty xs) ->
    head (maps xs) `shouldBe` 2 * (head xs)
