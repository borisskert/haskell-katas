module VowelSpec where

import Test.Hspec
import Vowel

spec :: Spec
spec = do
  describe "isVow" $ do
    it "works on fixed cases" $ do
      isVow [118,117,120,121,117,98,122,97,120,106,104,116,113,114,113,120,106] `shouldBe` [Left 118,Right "u",Left 120,Left 121,Right "u",Left 98,Left 122,Right "a",Left 120,Left 106,Left 104,Left 116,Left 113,Left 114,Left 113,Left 120,Left 106]
      isVow [101,121,110,113,113,103,121,121,101,107,103] `shouldBe` [Right "e",Left 121,Left 110,Left 113,Left 113,Left 103,Left 121,Left 121,Right "e",Left 107,Left 103]
      isVow [118,103,110,109,104,106] `shouldBe` [Left 118,Left 103,Left 110,Left 109,Left 104,Left 106]
      isVow [107,99,110,107,118,106,112,102] `shouldBe` [Left 107,Left 99,Left 110,Left 107,Left 118,Left 106,Left 112,Left 102]
      isVow [100,100,116,105,117,121 ] `shouldBe` [Left 100,Left 100,Left 116,Right "i",Right "u",Left 121]

-- the following line is optional for 8.2
main = hspec spec
