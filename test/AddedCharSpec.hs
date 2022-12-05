module AddedCharSpec where

import AddedChar
import Test.Hspec

spec :: Spec
spec = do
  describe "Three Added Characters" $ do
    it "Basic tests" $ do
      addedChar "hello" "checlclo" `shouldBe` 'c'
      addedChar "aabbcc" "aacccbbcc" `shouldBe` 'c'
      addedChar "abcde" "2db2a2ec" `shouldBe` '2'
