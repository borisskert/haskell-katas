module Codewars.Kata.CaseSwappingSpec (spec, main) where
import Codewars.Kata.CaseSwapping (swap)
import Test.Hspec
import Data.Foldable (for_)

main = hspec spec
spec = do
  describe "swap" $ do
    it "should work for some examples" $ do
      swap ""         `shouldBe` ""
      swap "CodeWars" `shouldBe` "cODEwARS"
      swap "abc"      `shouldBe` "ABC"
      swap "ABC"      `shouldBe` "abc"
      swap "123235"   `shouldBe` "123235"
    
    it "should work for every single letter string" $ do
      for_ (zip ['A'..'Z'] ['a'..'z']) $ \(a,b) -> do
        swap [a] `shouldBe` [b]
        swap [b] `shouldBe` [a]
